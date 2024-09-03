import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/network_services/remote_service/handler/dio_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final dio = DioClient().dio;

  Future<Either<AppErrorHandler, T>> request<T>({
    required String method,
    required String path,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
  }) async {
    try {
      Response response;

      switch (method) {
        case 'GET':
          response = await dio.get(path, queryParameters: queryParameters, options: options);
          break;
        case 'POST':
          response = await dio.post(path, data: data, queryParameters: queryParameters, options: options);
          break;
        case 'PUT':
          response = await dio.put(path, data: data, queryParameters: queryParameters, options: options);
          break;
        case 'DELETE':
          response = await dio.delete(path, queryParameters: queryParameters, options: options);
          break;
        default:
          throw Exception('Unsupported request method');
      }

      if (response.statusCode == 200) {
        final result = response.data;
        return Right(result);
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
