import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  final PageController pageController = PageController(initialPage: 0);
  NavigationCubit() : super(Home());
  void swipe(index) {
    if (index == 0) {
      emit(Home());
    } else {
      emit(Search());
    }
  }

  void navigate(index) {
    pageController.jumpToPage(index);
    if (index == 0) {
      emit(Home());
    } else {
      emit(Search());
    }
  }
}
