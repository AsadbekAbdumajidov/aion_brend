// ignore_for_file: must_be_immutable

import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class LittelButton extends StatelessWidget {
  String title;
  Function() onTap;
  LittelButton({Key? key, required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: AppButtonStyle.instance.buttonStyleBorder8ColorPrimaryHe42Wi147,
        onPressed: onTap,
        child: Text(title, style: AppTextStyles.instance.styleW500S16White));
  }
}


