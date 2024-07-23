import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/network_services/api_endpoints.dart';
import 'package:base_project/core/network_services/remote_service/api_network_handler.dart';
import 'package:base_project/features/profile/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ProfileDatasourceA {
  Future<Either<AppErrorHandler, List<UserModel>>> getUser();
}

class ProfileRemoteDatasource implements ProfileDatasourceA {
  final ApiNetworkHandler dio;

  ProfileRemoteDatasource({required this.dio});

  @override
  Future<Either<AppErrorHandler, List<UserModel>>> getUser() async {
    try {
      final response = await dio.handleGetRequest(ApiEndpoint.userURL);
      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data;
        final List<UserModel> users = responseData
            .map(
              (userJson) => UserModel.fromJson(userJson as Map<String, dynamic>),
            )
            .toList();
        return Right(users);
      } else {
        return Left(AppErrorHandler(message: response.data['message']));
      }
    } on DioException catch (e) {
      return Left(AppErrorHandler(message: e.message.toString()));
    }
  }
}
