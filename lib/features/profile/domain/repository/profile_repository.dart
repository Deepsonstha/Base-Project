import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository {
  // Future<Either<AppErrorHandler, List<UserEntity>>> getUser();
  Stream<Either<AppErrorHandler, List<UserEntity>>> getUser();
}
