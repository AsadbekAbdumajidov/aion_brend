import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class HomeAppBar {
  String? title;
  IconData? rightIcon;
  IconData? leftIcon;
  Function()? rightOntap;
  Function()? leftOntap;
  HomeAppBar({
    this.title,
    this.rightIcon,
    this.leftOntap,
    this.rightOntap,
    this.leftIcon,
  });
  getBar(context) {
    return AppBar(
      leading: IconButton(
          splashRadius: he(20),
          onPressed: leftOntap,
          icon: Icon(leftIcon, color: AppColors.instance.black)),
      title: Text(title ?? "", style: AppTextStyles.instance.styleW400S17Black),
      actions: [
        IconButton(
            splashRadius: he(20),
            onPressed: rightOntap,
            icon: Icon(rightIcon, color: AppColors.instance.black)),
      ],
    );
  }
}
