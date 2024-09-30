import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class SSEClient {
  final String url;
  http.Client? _client;
  int _retryCount = 0;
  final int _maxRetryAttempts = 5;
  final Duration _initialDelay = const Duration(seconds: 2);

  SSEClient({required this.url});

  Future<void> subscribeSSE() async {
    _client = http.Client();
    try {
      log("Subscribing to SSE...");
      var request = http.Request("GET", Uri.parse(url));
      request.headers["Cache-Control"] = "no-cache";
      request.headers["Accept"] = "text/event-stream";

      var streamedResponse = await _client!.send(request);

      if (streamedResponse.statusCode == 200) {
        log("Subscribed! Status Code: ${streamedResponse.statusCode}");

        streamedResponse.stream
            .transform(utf8.decoder)
            .transform(const LineSplitter()) // Split by lines for SSE data
            .listen(
          (line) {
            if (line.startsWith('data:')) {
              var eventData = line.substring(5).trim();
              if (eventData.isNotEmpty) {
                log("Received event data: $eventData");
                _retryCount = 0; // Reset retry count on successful connection
              }
            }
          },
          onError: (error) {
            log("Error receiving data: $error");
            _handleRetry(); // Retry on error
          },
          onDone: () {
            log("Stream closed");
            _handleRetry(); // Retry if the connection is closed
          },
          cancelOnError: true,
        );
      } else {
        log("Failed to subscribe, status code: ${streamedResponse.statusCode}");
        _handleRetry();
      }
    } catch (e) {
      log("Caught exception: $e");
      _handleRetry(); // Retry on exception
    }
  }

  // Retry handling
  void _handleRetry() {
    if (_retryCount < _maxRetryAttempts) {
      _retryCount++;
      var delay = _getRetryDelay();
      log("Retrying connection in ${delay.inSeconds} seconds (Attempt $_retryCount/$_maxRetryAttempts)...");
      Future.delayed(delay, () {
        subscribeSSE(); // Retry connection
      });
    } else {
      log("Max retry attempts reached. Giving up.");
      _client?.close();
    }
  }

  // Exponential backoff delay calculation
  Duration _getRetryDelay() {
    return _initialDelay * (_retryCount); // Exponential backoff
  }

  // Clean up resources
  void close() {
    _client?.close();
    log("Client connection closed");
  }
}
