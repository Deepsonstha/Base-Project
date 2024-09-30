import 'package:base_project/features/see_testing/see_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sse_cubit.freezed.dart';
part 'sse_state.dart';

class SseCubit extends Cubit<SseState> {
  SseCubit() : super(SseState.initial());

  callSSeSetup() async {
    // /GET REQUEST
    // SSEClient.subscribeToSSE(
    //   method: SSERequestType.GET,
    //   url: 'https://stock-uat.imepay.com.np/api/v1/stream/stock',
    //   header: {
    //     // "Accept": "text/event-stream",
    //     "Cache-Control": "no-cache",
    //   },
    // ).listen(
    //   (event) {
    //     log('eventlisitener: $event');
    //     log('Id: ${event.id ?? ""}');
    //     log('Event: ${event.event ?? ""}');
    //     log('Data: ${event.data ?? ""}');
    //   },
    // );
  }

  Future<void> subscribeSSE() async {
    var sseClient = SSEClient(url: "https://32f4-116-66-197-119.ngrok-free.app/api/v1/stream/stock");
    sseClient.subscribeSSE();

    // Optionally, close the connection when the app or widget is disposed
    // sseClient.close();
  }
}
