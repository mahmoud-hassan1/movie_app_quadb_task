part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class FetchSearchDataLoading extends SearchState {}

final class FetchSearchDataSuccess extends SearchState {
  final List<MovieEntity> movies;
  FetchSearchDataSuccess({required this.movies});
}

final class FetchSearchDataFailed extends SearchState {
  final String message;

  FetchSearchDataFailed({required this.message});
}
