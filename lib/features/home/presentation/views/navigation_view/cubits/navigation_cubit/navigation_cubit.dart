import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(Home());
  void navigate(index){
    if(index==0){
      emit(Home());
    }
    else{
      emit(Search());
    }
  }
}
