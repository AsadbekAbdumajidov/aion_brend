

import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class AppButtonStyle {
  static final AppButtonStyle _instance = AppButtonStyle._inint();
  static AppButtonStyle get instance => _instance;
  AppButtonStyle._inint();

  ButtonStyle buttonStyleBorder8ColorPrimary = OutlinedButton.styleFrom(
    fixedSize: Size(wi(147), he(42)),padding: const EdgeInsets.all(0),
    backgroundColor: AppColors.instance.primarColor,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  );

  ButtonStyle buttonStyleRadius18WhiteW110H54 = OutlinedButton.styleFrom(
    fixedSize: Size(wi(110), he(54)),
    backgroundColor: AppColors.instance.white,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );

  ButtonStyle buttonStyleRadius18TransparentW160H54 = OutlinedButton.styleFrom(
    fixedSize: Size(wi(160), he(54)),
    // backgroundColor: AppColors.instance.white,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );
}
