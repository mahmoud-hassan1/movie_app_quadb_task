import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;
  final int? code;

  ApiException(this.message, {this.code});

  @override
  String toString() {
    return 'ApiException: $message (code: $code)';
  }

  static ApiException fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.cancel:
        return ApiException('Request to API server was cancelled');
      case DioExceptionType.connectionTimeout:
        return ApiException('Connection timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ApiException('Receive timeout in connection with API server');
      case DioExceptionType.sendTimeout:
        return ApiException('Send timeout in connection with API server');
      case DioExceptionType.badResponse:
        return ApiException(
          'Received invalid status code: ${dioException.response?.statusCode}',
          code: dioException.response?.statusCode,
        );
      case DioExceptionType.unknown:
        return ApiException(
            'Connection to API server failed due to an unknown error');
      default:
        return ApiException('Unexpected error occurred');
    }
  }
}
