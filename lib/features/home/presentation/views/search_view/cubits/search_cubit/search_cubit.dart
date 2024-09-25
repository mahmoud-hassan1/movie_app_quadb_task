import 'package:bloc/bloc.dart';
import 'package:quadb_assignment/core/utils/api_handler/api_exeptions.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/domain/usecase/movies_usecase.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final MoviesUseCase _moviesUseCase;
  SearchCubit(this._moviesUseCase) : super(SearchInitial());

  fetchSearchData(String query) async {
    emit(FetchSearchDataLoading());
    try {
      final List<MovieEntity> movies = await _moviesUseCase.getMovies(query);
      emit(FetchSearchDataSuccess(movies: movies));
    } catch (e) {
      if (e is ApiException) {
      emit(FetchSearchDataFailed(message: e.message));
    } else {
      emit(FetchSearchDataFailed(message: 'An unexpected error occurred'));
    }
    }
  }
}
