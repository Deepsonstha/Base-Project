import 'package:base_project/core/dependency_injection/dependecy_injection.dart';
import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/network_services/api_endpoints.dart';
import 'package:base_project/core/network_services/remote_service/api_network_handler.dart';
import 'package:base_project/core/network_services/remote_service/generic_api_handler.dart';
import 'package:base_project/features/profile/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProfileDatasourceA {
  Future<Either<AppErrorHandler, List<UserModel>>> getUser();
}

class ProfileRemoteDatasource implements ProfileDatasourceA {
  final ApiNetworkHandler dio;
  final apiClient = locator<ApiClient>();

  ProfileRemoteDatasource({required this.dio});

  @override
  Future<Either<AppErrorHandler, List<UserModel>>> getUser() async {
    try {
      final response = await dio.handleGetRequest(ApiEndpoint.userURL, queryParameters: {
        '_limit': 3,
      });
      if (response.statusCode == 200) {
        return Right(UserModel.listfromMap(response.data));
      } else {
        return Left(AppErrorHandler(message: response.data['message']));
      }
    } on DioException catch (e) {
      return Left(AppErrorHandler(message: e.message.toString()));
    } catch (e) {
      return Left(AppErrorHandler(message: e.toString()));
    }
  }
}
