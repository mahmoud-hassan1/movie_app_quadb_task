part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class FetchDataSuccess  extends HomeState {
  final List<MovieEntity>movies;

  FetchDataSuccess({required this.movies});
}
final class FetchDataLoading  extends HomeState {}
final class FetchDataFaild  extends HomeState {
  final String message;

  FetchDataFaild({required this.message});
}