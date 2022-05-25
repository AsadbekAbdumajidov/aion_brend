import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/nav_bar/nav_bar_cubit.dart';
import 'package:aion/cubit/nav_bar/nav_bar_state.dart';
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
      create: (context) => NavBarCubit(),
      child: BlocConsumer<NavBarCubit, NavBarState>(
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
          .read<NavBarCubit>()
          .pages[context.watch<NavBarCubit>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v) {
          context.read<NavBarCubit>().addPages(v);
        },
        unselectedFontSize: he(10),
        selectedFontSize: he(10),
        currentIndex: context.watch<NavBarCubit>().currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset(AppIcons.instance.icHome,
                  alignment: Alignment.bottomCenter,
                  color: context.watch<NavBarCubit>().currentIndex == 0
                      ? AppColors.instance.primarColor
                      : AppColors.instance.black),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset(AppIcons.instance.icExxplore,
                  color: context.watch<NavBarCubit>().currentIndex == 1
                      ? AppColors.instance.primarColor
                      : AppColors.instance.black),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset(AppIcons.instance.icCart,
                  color: context.watch<NavBarCubit>().currentIndex == 2
                      ? AppColors.instance.primarColor
                      : AppColors.instance.black),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset(AppIcons.instance.icFavorite,
                  color: context.watch<NavBarCubit>().currentIndex == 3
                      ? AppColors.instance.primarColor
                      : AppColors.instance.black),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: he(5)),
              child: SvgPicture.asset(AppIcons.instance.icProfile,
                  color: context.watch<NavBarCubit>().currentIndex == 4
                      ? AppColors.instance.primarColor
                      : AppColors.instance.black),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
