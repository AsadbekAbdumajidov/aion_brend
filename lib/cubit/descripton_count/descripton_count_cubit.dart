import 'package:aion/cubit/descripton_count/descripton_count_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DescriptonCountCubit extends Cubit<DescriptonCountState> {
  DescriptonCountCubit() : super(DescriptonCountState(1));

  void countAdd() {
    emit(DescriptonCountState(state.count + 1));
  }

  void countRemove() {
    emit(DescriptonCountState(state.count - 1));
  }
}
