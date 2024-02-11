import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingCubit extends Cubit<int> {
  OnBoardingCubit() : super(0);

  void increaseCurrentPageIndex() {
    if(state!=4){
      emit(state + 1);
    }
  }

  void decreaseCurrentPageIndex() {
    if(state!=0){
      emit(state - 1);
    }
  }
}
