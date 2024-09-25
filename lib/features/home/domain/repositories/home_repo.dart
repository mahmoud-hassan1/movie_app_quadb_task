import 'package:quadb_assignment/features/home/data/models/movie_model/movie_model.dart';

abstract class HomeRepo {
  Future<List<MovieModel>> getMovies(String q);
}