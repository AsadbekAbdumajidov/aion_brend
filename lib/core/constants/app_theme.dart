import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final appThemeData = ThemeData(
  colorScheme:
      ColorScheme.fromSwatch().copyWith(secondary: AppColors.primarColor),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.backGround,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
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
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.backGround,
    type: BottomNavigationBarType.fixed,
    unselectedItemColor: AppColors.black,
    selectedItemColor: AppColors.primarColor,
    
  ),
  backgroundColor: AppColors.backGround,
  scaffoldBackgroundColor: AppColors.backGround,
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);
