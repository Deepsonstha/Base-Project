import 'package:base_project/core/dependency_injection/dependecy_injection.dart';
import 'package:base_project/features/profile/data/datasource/remote_datasource/profile_remote_datasource.dart';
import 'package:base_project/features/profile/data/repository_impl/profile_repository_impl.dart';
import 'package:base_project/features/profile/domain/repository/profile_repository.dart';
import 'package:base_project/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:base_project/features/profile/presentation/bloc/profile_bloc.dart';

class ProfileInjection {
  static register() {
    locator.registerLazySingleton<ProfileRemoteDatasource>(() => ProfileRemoteDatasource(dio: locator()));
    locator.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(datasource: locator()));
    locator.registerLazySingleton(() => GetUserUsecase(repository: locator()));
    locator.registerFactory(() => ProfileBloc(getUserUsecase: locator()));
    // locator.registerFactory(() => );
  }
}
