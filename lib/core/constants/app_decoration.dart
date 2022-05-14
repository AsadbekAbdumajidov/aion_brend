import 'package:aion/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static final AppDecoration _instance = AppDecoration._inint();
  static AppDecoration get instance => _instance;
  AppDecoration._inint();

  BoxDecoration decorationColorBackgroundBorderRadiusAll8 = BoxDecoration(
      border: Border.all(width: 2, color: AppColors.instance.backGround),
      borderRadius: const BorderRadius.all(Radius.circular(8)));

  BoxDecoration decorationColorWhiteRadiusAll13 = BoxDecoration(
    color: AppColors.instance.white,
    borderRadius: const BorderRadius.all(Radius.circular(13)),
  );
}
