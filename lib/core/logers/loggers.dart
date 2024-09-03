import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

responseLogger({required Response response}) {
  String yellowColor = '\x1B[33m';
  String resetColor = '\x1B[0m';

  final String method = response.requestOptions.method;
  final String url = response.requestOptions.uri.toString();
  final int statusCode = response.statusCode ?? 0;
  final String statusMessage = response.statusMessage ?? 'Unknown Status';

  // Format the response body if it's JSON
  String formattedBody;
  try {
    if (response.data is Map || response.data is List) {
      // If the response is already a Map or List, pretty print it
      formattedBody = const JsonEncoder.withIndent('  ').convert(response.data);
    } else if (response.data is String) {
      // If the response is a string, attempt to decode it and then pretty print
      final decodedData = jsonDecode(response.data);
      formattedBody = const JsonEncoder.withIndent('  ').convert(decodedData);
    } else {
      formattedBody = response.data.toString();
    }
  } catch (e) {
    // If the response can't be parsed as JSON, use the raw response
    formattedBody = response.data.toString();
  }

  final String logMessage = '''
$yellowColor╔╣ Response ║ $method ║ Status: $statusCode $statusMessage
 ║  $url
 ╚══════════════════════════════════════════════════════════════════════════════════════════╝
 Body 
     $formattedBody$resetColor
''';

  log(logMessage);
}


// requestLogger({required RequestOptions options}) {
//   String yellowColor = '\x1B[33m';
//   String resetColor = '\x1B[0m';
//    longDebugPrint(
//     '$_greenColor[API Request] --> URL: ${options.baseUrl}${options.path}\n'
//     'Method: ${options.method}\n'
//     'Headers: ${options.headers}\n'
//     'Query Parameters: ${options.queryParameters}\n'
//     'Body: ${options.data}$_resetColor',
//   );

//   final String method = response.requestOptions.method;
//   final String url = response.requestOptions.uri.toString();
//   final int statusCode = response.statusCode ?? 0;
//   final String statusMessage = response.statusMessage ?? 'Unknown Status';

//   // Format the response body if it's JSON
//   String formattedBody;
//   try {
//     if (response.data is Map || response.data is List) {
//       // If the response is already a Map or List, pretty print it
//       formattedBody = const JsonEncoder.withIndent('  ').convert(response.data);
//     } else if (response.data is String) {
//       // If the response is a string, attempt to decode it and then pretty print
//       final decodedData = jsonDecode(response.data);
//       formattedBody = const JsonEncoder.withIndent('  ').convert(decodedData);
//     } else {
//       formattedBody = response.data.toString();
//     }
//   } catch (e) {
//     // If the response can't be parsed as JSON, use the raw response
//     formattedBody = response.data.toString();
//   }

//   final String logMessage = '''
// $yellowColor╔╣ Response ║ $method ║ Status: $statusCode $statusMessage
//  ║  $url
//  ╚══════════════════════════════════════════════════════════════════════════════════════════╝
//  Body 
//      $formattedBody$resetColor
// ''';

//   log(logMessage);
// }
