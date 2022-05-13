// ignore_for_file: library_prefixes

import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/cupertino_tab_bar/cupertino_tab_bar_cubit.dart';
import 'package:aion/cubit/cupertino_tab_bar/cupertino_tab_bar_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_tabbar/cupertino_tabbar.dart' as CupertinoTabBar;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CupertinoTapBar extends StatefulWidget {
  const CupertinoTapBar({Key? key}) : super(key: key);

  @override
  State<CupertinoTapBar> createState() => _CupertinoTapBarState();
}

class _CupertinoTapBarState extends State<CupertinoTapBar> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CupertinoTabBarCubit(),
      child: BlocConsumer<CupertinoTabBarCubit, CupertinoTabBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          return tapBar(context);
        },
      ),
    );
  }

  CupertinoTabBar.CupertinoTabBar tapBar(BuildContext context) {
    return CupertinoTabBar.CupertinoTabBar(
      AppColors.instance.grey,
      AppColors.instance.white,
      [
        Text(
          "Erkaklar",
          style: AppTextStyles.instance.styleW400S15Black,
          textAlign: TextAlign.center,
        ),
        Text(
          "Ayollar",
          style: AppTextStyles.instance.styleW400S15Black,
          textAlign: TextAlign.center,
        ),
        Text(
          "Bolalar",
          style: AppTextStyles.instance.styleW400S15Black,
          textAlign: TextAlign.center,
        ),
      ],

      () {
        return context.watch<CupertinoTabBarCubit>().state.index;
      },
      (int index) {
        context.read<CupertinoTabBarCubit>().changeIndex(index);
      },
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      useShadow: false,
      outerVerticalPadding: he(3),
      innerHorizontalPadding: wi(31),
    );
  }
}
