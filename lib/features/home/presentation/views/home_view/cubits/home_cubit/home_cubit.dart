import 'package:bloc/bloc.dart';
import 'package:quadb_assignment/core/utils/api_handler/api_exeptions.dart';
import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';
import 'package:quadb_assignment/features/home/domain/usecase/movies_usecase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MoviesUseCase _moviesUseCase ;
  HomeCubit(this._moviesUseCase) : super(HomeInitial());
  fetchData()async{
  emit(FetchDataLoading());
  try {
    final List<MovieEntity> movies = await _moviesUseCase.getMovies("all");
    emit(FetchDataSuccess(movies: movies));
  } catch (e) {
    if (e is ApiException) {
      emit(FetchDataFaild(message: e.message));
    } else {
      emit(FetchDataFaild(message: 'An unexpected error occurred'));
    }
  }
  }
}
