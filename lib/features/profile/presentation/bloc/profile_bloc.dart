// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

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
  }) : super(ProfileState.initially()) {
    on<FetchProfileEvent>(
      (event, emit) => event.when(
        profileFetch: () => _fetchProfile(event, emit),
      ),
    );
  }

  Future<void> _fetchProfile(
    FetchProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final result = getUserUsecase.call(null);

    await for (final event in result) {
      event.fold(
        (l) => emit(
          state.copyWith(
            isLoadingState: false,
            errorState: AppErrorHandler(
              message: l.message.toString(),
            ),
          ),
        ),
        (r) {
          log("blocSream ::$r");

          emit(
            state.copyWith(
              isLoadingState: false,
              isSuccessState: true,
              userList: r,
            ),
          );

          log("blocSream updated userList ::${state.userList}");
        },
      );
    }
  }
}
