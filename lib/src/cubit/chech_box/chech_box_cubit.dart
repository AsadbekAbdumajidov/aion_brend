import 'package:aion/src/cubit/chech_box/chech_box_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckBoxCubit extends Cubit<CheckBoxState> {
  CheckBoxCubit() : super(CheckBoxState(false));

  void checkBox() {
    emit(CheckBoxState(!state.check));
  }
}
