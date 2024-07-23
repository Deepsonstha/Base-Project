import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/usecase/usecase.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:base_project/features/profile/domain/repository/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetUserUsecase extends UseCase<List<UserEntity>, void> {
  final ProfileRepository repository;

  GetUserUsecase({required this.repository});
  @override
  Future<Either<AppErrorHandler, List<UserEntity>>> call(void parms) async {
    return await repository.getUser();
  }
}
