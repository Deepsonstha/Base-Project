import 'package:base_project/core/network_services/remote_service/handler/dio_exception.dart';
import 'package:base_project/core/network_services/remote_service/handler/dio_service.dart';
import 'package:dio/dio.dart';

class ApiNetworkHandler {
  final dioClient = DioClient().dio;

//! GET
  Future<Response> handleGetRequest(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await dioClient.get(
        path,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      // Convert DioException to your custom DioExceptions
      throw DioExceptions.fromDioError(e);
    }
  }

//! POST
  Future<Response> handlePostRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await dioClient.post(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw DioExceptions.fromDioError(e);
    }
  }

  //! PUT
  Future<Response> handlePutRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      return await dioClient.put(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
    } on DioException catch (e) {
      throw DioExceptions.fromDioError(e);
    }
  }

//! DELETE
  Future<Response> handleDeleteRequest(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await dioClient.delete(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      );
    } on DioException catch (e) {
      throw DioExceptions.fromDioError(e);
    }
  }
}
