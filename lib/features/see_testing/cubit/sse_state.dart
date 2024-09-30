part of 'sse_cubit.dart';

@freezed
class SseState with _$SseState {
 const factory SseState({
  @Default("") String data,

 })=_SseState;
   factory SseState.initial() => const SseState();
}
