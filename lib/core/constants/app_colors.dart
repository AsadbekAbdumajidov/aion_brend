import 'package:flutter/material.dart';

class AppColors {
  static final AppColors _instance = AppColors._inint();
  static AppColors get instance => _instance;
  AppColors._inint();

  Color backGround = const Color(0xFFF5F5F5);
  Color primarColor = const Color(0xFFFF5732);
  Color black = Colors.black;
  Color grey = const Color(0xFFE9E9E9);
  Color white = Colors.white;
  Color blue = const Color(0xFF5A80FE);
  Color green =const Color(0xFF23E637); 
  Color red =  Colors.red;
  Color transparent =  Colors.transparent;
}
