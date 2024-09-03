part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoadingState,
    @Default(false) bool isSuccessState,
    @Default([]) List<UserEntity> userList,
    AppErrorHandler? errorState,
  }) = _ProfileState;

  factory ProfileState.initially() => const ProfileState();
}
