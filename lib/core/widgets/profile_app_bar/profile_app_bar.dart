import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAppBar {
  String title;
  String leftIcon;
  Function()? leftOntap;
PreferredSizeWidget? bottom;
  ProfileAppBar({
    required this.title,
    required this.leftIcon,
    this.leftOntap,
    this.bottom
  });
  getBar(context) {
    return AppBar(
      
      bottom: bottom,
      title: Text(title, style: AppTextStyles.instance.styleW400S15Black),
      leading: IconButton(
        splashRadius: 20,
        icon: SvgPicture.asset(leftIcon),
        onPressed: leftOntap,
      ),
    );
  }
}
