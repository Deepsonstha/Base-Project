import 'package:base_project/core/network_services/api_endpoints.dart';
import 'package:base_project/core/network_services/remote_service/handler/dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  // Private static instance of the DioClient class
  static final DioClient _instance = DioClient._internal();

  // Dio instance
  final Dio dio;

  // Private named constructor
  DioClient._internal() : dio = Dio() {
    dio
      ..options.baseUrl = ApiEndpoint.baseURL
      ..options.headers = ApiEndpoint.header
      ..options.connectTimeout = const Duration(milliseconds: ApiEndpoint.connectionTimeout)
      ..options.receiveTimeout = const Duration(milliseconds: ApiEndpoint.receiveTimeout)
      ..options.responseType = ResponseType.json
      ..interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
        ),
      )
      ..interceptors.add(DioInterceptor());
  }

  // Public static method to access the singleton instance
  factory DioClient() {
    return _instance;
  }
}
