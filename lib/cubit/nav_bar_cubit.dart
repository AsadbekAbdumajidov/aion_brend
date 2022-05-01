import 'package:aion/cubit/cubit_state.dart';
import 'package:aion/screens/tabs/cart/cart_page.dart';
import 'package:aion/screens/tabs/explore/explore_page.dart';
import 'package:aion/screens/tabs/favorite/favorite_page.dart';
import 'package:aion/screens/tabs/home/home_page.dart';
import 'package:aion/screens/tabs/profile/profile_page.dart';
import 'package:bloc/bloc.dart';

class AppBlock extends Cubit<AppState> {
  AppBlock() : super(AppInitial());
  final List pages = const [
    Home(),
    Explore(),
    Cart(),
    Favorite(),
    Profile()
  ];
  int currentIndex = 0;

  void addPages(v) {
    currentIndex = v;
    emit(ButtomState());
  }

  int son = 0;
  pageReload(v) {
    son = v;
    emit(ButtomState());
  }
}
