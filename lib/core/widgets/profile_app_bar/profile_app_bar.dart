import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar {
  String title;
  String leftIcon;
  Function()? leftOntap;

  ProfileAppBar({
    required this.title,
    required this.leftIcon,
    this.leftOntap,
  });
  getBar(context) {
    return AppBar(
      title: Text(title, style: AppTextStyles.instance.styleW400S15Black),
      leading: IconButton(
        splashRadius: 20,
        icon: SvgPicture.asset(leftIcon),
        onPressed: leftOntap,
      ),
    );
  }
}
