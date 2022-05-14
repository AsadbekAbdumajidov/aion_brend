import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar {
  String title;

  Function()? leftOntap;
  Function()? leftOntap1;

  HomeAppBar({
    required this.title,
    this.leftOntap,
    this.leftOntap1,
  });
  getBar(context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
      title: Text(title, style: AppTextStyles.instance.styleW400S17Black),
      actions: [
        GestureDetector(
          onTap: leftOntap,
          child: SvgPicture.asset(
            AppIcons.instance.icShare,
          ),
        ),
        IconButton(
            onPressed: leftOntap1,
            icon: Icon(Icons.favorite_border_outlined,
                color: AppColors.instance.black)),
      ],
    );
  }
}
