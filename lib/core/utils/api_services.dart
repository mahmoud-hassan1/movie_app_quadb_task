import 'package:dio/dio.dart';
import 'package:quadb_assignment/core/utils/api_handler/api_exeptions.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = 'https://api.tvmaze.com/';
  }

  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } on DioException catch (dioException) {
      throw ApiException.fromDioException(dioException);
    } catch (e) {
      throw ApiException('Unexpected error occurred');
    }
  }
}
