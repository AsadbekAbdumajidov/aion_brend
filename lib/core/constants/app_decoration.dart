import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static final AppDecoration _instance = AppDecoration._inint();
  static AppDecoration get instance => _instance;
  AppDecoration._inint();

  BoxDecoration decorationColorBlackWith03BorderRadiusBottom100 = BoxDecoration(
      color: AppColors.instance.black.withOpacity(0.3),
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100)));

  BoxDecoration decorationColorBackgroundBorderRadiusAll8 = BoxDecoration(
      border: Border.all(width: 2, color: AppColors.instance.backGround),
      borderRadius: const BorderRadius.all(Radius.circular(8)));

  BoxDecoration decorationColorWhiteRadiusAll13 = BoxDecoration(
    color: AppColors.instance.white,
    borderRadius: const BorderRadius.all(Radius.circular(13)),
  );

  BoxDecoration decorationBorderPrimaryRadius6 = BoxDecoration(
      border: Border.all(width: wi(2), color: AppColors.instance.primarColor),
      color: AppColors.instance.white,
      borderRadius: const BorderRadius.all(Radius.circular(6)));

  BoxDecoration decorationColorWhiteRadius14 = BoxDecoration(
      color: AppColors.instance.white,
      borderRadius: const BorderRadius.all(Radius.circular(14)));
}
