import 'package:aion/views/tabs/cart/cart_page.dart';
import 'package:aion/views/tabs/explore/explore_page.dart';
import 'package:aion/views/tabs/favorite/favorite_page.dart';
import 'package:aion/views/tabs/home/home_page.dart';
import 'package:aion/views/tabs/profile_active/profile_page.dart';
import 'package:aion/views/tabs/profile_passive/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aion/cubit/nav_bar/nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
	NavBarCubit() : super( NavBarState());
	 final List pages = const [Home(), Explore(), Cart(), Favorite(), ProfilePassive()];
  int currentIndex = 0;

  void addPages(v) {
    currentIndex = v;
    emit(NavBarState());
  }

  int son = 0;
  pageReload(v) {
    son = v;
    emit(NavBarState());
  }
	
}
