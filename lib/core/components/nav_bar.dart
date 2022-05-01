import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/cubit_state.dart';
import 'package:aion/cubit/nav_bar_cubit.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => AppBlock(),
      child: BlocConsumer<AppBlock, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: context
          .read<AppBlock>()
          .pages[context.watch<AppBlock>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v) {
          context.read<AppBlock>().addPages(v);
        },
      unselectedFontSize: he(10),
      selectedFontSize: he(10),  
       
        currentIndex: context.watch<AppBlock>().currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset("assets/svg/home.svg",
                  alignment: Alignment.bottomCenter,
                  color: context.watch<AppBlock>().currentIndex == 0
                      ? AppColors.primarColor
                      : AppColors.black),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset("assets/svg/explore.svg",
                  color: context.watch<AppBlock>().currentIndex == 1
                      ? AppColors.primarColor
                      : AppColors.black),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset("assets/svg/cart.svg",
                  color: context.watch<AppBlock>().currentIndex == 2
                      ? AppColors.primarColor
                      : AppColors.black),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset("assets/svg/favorite.svg",
                  color: context.watch<AppBlock>().currentIndex == 3
                      ? AppColors.primarColor
                      : AppColors.black),
            ),
            label: 'Favorite',
            
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset("assets/svg/profile.svg",
                  color: context.watch<AppBlock>().currentIndex == 4
                      ? AppColors.primarColor
                      : AppColors.black),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
