part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitialState;
  const factory ProfileState.loading() = ProfileLoadingState;
  const factory ProfileState.success({required List<UserEntity> userlist}) = ProfileSuccessState;
  const factory ProfileState.error({required AppErrorHandler error}) = ProfileErrorState;
}
