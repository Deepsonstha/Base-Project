// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:base_project/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserUsecase getUserUsecase;
  ProfileBloc({
    required this.getUserUsecase,
  }) : super(const ProfileState.initial()) {
    on<FetchProfileEvent>(_fetchProfile);
  }

  Future<void> _fetchProfile(
    FetchProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await getUserUsecase.call(null);
    result.fold(
      (error) {
        emit(ProfileState.error(error: AppErrorHandler(message: error.message)));
      },
      (success) {
        emit(ProfileState.success(userlist: success));
      },
    );
  }
}
