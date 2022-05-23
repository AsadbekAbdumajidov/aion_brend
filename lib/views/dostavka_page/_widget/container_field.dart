// ignore_for_file: must_be_immutable

import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class ContainerField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  ContainerField({Key? key, required this.hintText,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.instance.white,
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: he(10),horizontal: wi(10)),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                hintText: "  $hintText",
                hintStyle: AppTextStyles.instance.styleW400S17BlackWith04),
          ),
        ),
      ),
    );
  }
}
