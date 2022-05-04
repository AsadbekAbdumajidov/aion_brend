import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._inint();
  static AppColors get instance => _instance;
  AppColors._inint();

  Color backGround = const Color(0xFFF5F5F5);
  Color primarColor = const Color(0xFFFF5732);
  Color black = Colors.black;
}
