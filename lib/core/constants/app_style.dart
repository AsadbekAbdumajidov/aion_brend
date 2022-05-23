import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static final AppTextStyles _instance = AppTextStyles._inint();
  static AppTextStyles get instance => _instance;
  AppTextStyles._inint();

  TextStyle styleW500S18Black = TextStyle(
      color: AppColors.instance.black,
      fontSize: he(18),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  TextStyle styleW500S16White = TextStyle(
      color: AppColors.instance.white,
      fontSize: he(16),
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal);

  TextStyle styleW400S17Black = TextStyle(
      color: AppColors.instance.black,
      fontSize: he(17),
      fontWeight: FontWeight.w500,
      fontFamily: "Mer",
      fontStyle: FontStyle.normal);

  TextStyle styleW400S17BlackWith04 = TextStyle(
      color: AppColors.instance.black.withOpacity(0.4),
      fontSize: he(17),
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  TextStyle styleW400S15Black = TextStyle(
    color: AppColors.instance.black,
    fontSize: he(15),
    fontWeight: FontWeight.w400,
  );

  TextStyle styleW400S15BlackOpacity04 = TextStyle(
    color: AppColors.instance.black.withOpacity(0.4),
    fontSize: he(15),
    fontWeight: FontWeight.w400,
  );

  TextStyle styleW500S14Black = TextStyle(
    color: AppColors.instance.black,
    fontSize: he(14),
    fontWeight: FontWeight.w500,
  );

  TextStyle styleW500S12Black = TextStyle(
    color: AppColors.instance.black,
    fontSize: he(12),
    fontWeight: FontWeight.w500,
  );
  TextStyle styleW500S13Black = TextStyle(
    color: AppColors.instance.black,
    fontSize: he(13),
    fontWeight: FontWeight.w500,
  );

  TextStyle styleW600S15Black = TextStyle(
      color: AppColors.instance.black,
      fontSize: he(15),
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal);

  TextStyle styleW700S18Black = TextStyle(
      color: AppColors.instance.black,
      fontSize: he(18),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);

  TextStyle styleW700S15Blue = TextStyle(
      color: AppColors.instance.blue,
      fontSize: he(15),
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal);

  TextStyle styleW600S14Black = TextStyle(
    color: AppColors.instance.black,
    fontSize: he(14),
    fontWeight: FontWeight.w600,
  );

  TextStyle stylew500S20Black = TextStyle(
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: he(20),
      color: AppColors.instance.black);

  TextStyle stylew800S20Black = TextStyle(
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
      fontSize: he(20),
      color: AppColors.instance.black);

  TextStyle stylew800S17Primary = TextStyle(
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
      fontSize: he(17),
      color: AppColors.instance.primarColor);

  TextStyle stylew600S14Primary = TextStyle(
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: he(14),
      color: AppColors.instance.primarColor);
}
