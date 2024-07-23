import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/extension/conversion.dart';
import 'package:base_project/features/profile/data/datasource/remote_datasource/profile_remote_datasource.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:base_project/features/profile/domain/repository/profile_repository.dart';
import 'package:dartz/dartz.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource datasource;

  ProfileRepositoryImpl({required this.datasource});

  @override
  Future<Either<AppErrorHandler, List<UserEntity>>> getUser() async {
    try {
      final eitherResult = await datasource.getUser();
      return eitherResult.fold(
        (error) {
          return Left(AppErrorHandler(message: error.message));
        },
        (userModels) {
          var userEntityList = userModels.map((e) => e.toEntity()).toList();

          return Right(userEntityList);
        },
      );
    } catch (e) {
      return Left(AppErrorHandler(message: e.toString()));
    }
  }
}
