import 'package:quadb_assignment/features/home/domain/repositories/home_repo.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/data/models/movie_model/movie_model.dart';

class MoviesUseCase  {
  final HomeRepo homeRepo;

  MoviesUseCase(this.homeRepo);

  Future<List<MovieEntity>> getMovies(String query) async {
    final movies = await homeRepo.getMovies(query);
    return movies.map((movie) => movie.toEntity()).toList();
  }
}