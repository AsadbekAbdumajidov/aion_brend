import 'package:aion/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final appThemeData = ThemeData(
  colorScheme: ColorScheme.fromSwatch()
      .copyWith(secondary: AppColors.instance.primarColor),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.instance.backGround,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.instance.black),
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    centerTitle: true,
  ),
  fontFamily: 'SFPro',
  // Bottom Nav Bar
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.instance.backGround,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: AppColors.instance.black,
    selectedItemColor: AppColors.instance.primarColor,
  ),
  backgroundColor: AppColors.instance.backGround,
  scaffoldBackgroundColor: AppColors.instance.backGround,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
