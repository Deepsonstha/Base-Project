import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/usecase/usecase.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:base_project/features/profile/domain/repository/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetUserUsecase extends UseCaseStream<List<UserEntity>, void> {
  final ProfileRepository repository;

  GetUserUsecase({required this.repository});

  @override
  Stream<Either<AppErrorHandler, List<UserEntity>>> call(void parms) {
    var dd = repository.getUser();
    return dd;
  }

  // @override
  // Future<Either<AppErrorHandler, List<UserEntity>>> call(void parms) async {
  //   var dd = repository.getUser();
  //   return dd;
  // }
}
