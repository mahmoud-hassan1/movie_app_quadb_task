import 'package:quadb_assignment/features/home/data/datasources/home_data_source.dart';
import 'package:quadb_assignment/features/home/domain/repositories/home_repo.dart';
import 'package:quadb_assignment/features/home/data/models/movie_model/movie_model.dart';


class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepoImpl(this.remoteDataSource);

  @override
  Future<List<MovieModel>> getMovies(String q) async {
    final List<dynamic> rawData = await remoteDataSource.getMovies(q);
    return rawData.map((item) => MovieModel.fromMap(item)).toList();
  }
}