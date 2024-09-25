import 'package:quadb_assignment/core/utils/api_services.dart';
class HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSource(this.apiService);

  Future<List<dynamic>> getMovies(String q) async {
    final response = await apiService.get('search/shows', queryParams: {'q': q});
    return response.data;
  }
}