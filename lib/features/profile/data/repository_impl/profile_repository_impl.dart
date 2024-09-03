import 'dart:developer';

import 'package:base_project/core/connectivity_checker.dart';
import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/extension/conversion.dart';
import 'package:base_project/features/profile/data/datasource/local_datasource/profile_local_datasource.dart';
import 'package:base_project/features/profile/data/datasource/remote_datasource/profile_remote_datasource.dart';
import 'package:base_project/features/profile/domain/entity/user_entity.dart';
import 'package:base_project/features/profile/domain/repository/profile_repository.dart';
import 'package:dartz/dartz.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource remoteDatasource;
  // final ProfileLocalDatasource localDataSource;

  ProfileRepositoryImpl({
    required this.remoteDatasource,
    // required this.localDataSource,
  });

  @override
  Stream<Either<AppErrorHandler, List<UserEntity>>> getUser() async* {
    var connectionCheck = await ConnectivityCheck.connectivity();
    try {
      if (connectionCheck) {
        // Fetch data from the local data source
        final localResult = await ProfileLocalDatasource.getUserModelList();
        yield localResult.fold(
          (l) => left(l),
          (r) {
            return right(r.map((e) => e.toEntity()).toList());
          },
        );

        // Fetch data from the remote data source
        final remoteResult = await remoteDatasource.getUser();

        if (remoteResult.isRight()) {
          log("callremote");
          final success = remoteResult.getOrElse(() => throw Exception('Unexpected error'));

          // Save to local storage (Hive)
          await ProfileLocalDatasource.saveUserData(users: success);

          // Fetch updated local data and yield it
          final updatedLocalResult = await ProfileLocalDatasource.getUserModelList();
          yield updatedLocalResult.fold(
            (error) => left(AppErrorHandler(message: "Error fetching local data after remote update.")),
            (success) => right(success.map((e) => e.toEntity()).toList()),
          );
        } else {
          yield left(AppErrorHandler(message: "Error fetching remote data"));
        }
      } else {
        // Fetch data from the local data source
        final localResult = await ProfileLocalDatasource.getUserModelList();
        yield localResult.fold(
          (l) => left(l),
          (r) {
            return right(r.map((e) => e.toEntity()).toList());
          },
        );
      }
    } catch (e) {
      yield left(AppErrorHandler(message: e.toString()));
    }
  }

  // @override
  // Future<Either<AppErrorHandler, List<UserEntity>>> getUser() async {
  //   var connectionCheck = await ConnectivityCheck.connectivity();

  //   if (connectionCheck) {
  //     var dd = await remoteDatasource.getUser();
  //     return dd.fold(
  //       (l) => left(l),
  //       (r) async {
  //         await ProfileLocalDatasource.saveUserData(users: r);
  //         final localResult = await ProfileLocalDatasource.getUserModelList();
  //         return localResult.fold(
  //           (l) => left(l),
  //           (r) => right(r.map((e) => e.toEntity()).toList()),
  //         );
  //       },
  //     );
  //   } else {
  //     final localResult = await ProfileLocalDatasource.getUserModelList();
  //     return localResult.fold(
  //       (l) => left(l),
  //       (r) => right(r.map((e) => e.toEntity()).toList()),
  //     );
  //   }
  // }
}
