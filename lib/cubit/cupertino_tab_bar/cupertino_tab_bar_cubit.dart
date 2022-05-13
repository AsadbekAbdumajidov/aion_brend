import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aion/cubit/cupertino_tab_bar/cupertino_tab_bar_state.dart';

class CupertinoTabBarCubit extends Cubit<CupertinoTabBarState> {
  CupertinoTabBarCubit() : super( CupertinoTabBarState(0));

  void changeIndex(int index) {
    emit(CupertinoTabBarState(index));
  }
}
