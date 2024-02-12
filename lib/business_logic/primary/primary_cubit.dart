import 'package:flutter_bloc/flutter_bloc.dart';

class PrimaryCubit extends Cubit<int> {
  PrimaryCubit() : super(0);

  void setCurrentPageIndex(int pageIndex) {
    if (pageIndex >= 0 && pageIndex <= 4) {
      emit(pageIndex);
    }
  }
}
