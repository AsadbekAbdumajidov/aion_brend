import 'dart:ui';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:flutter/material.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(
              height: context.h,
              width: context.w,
              color: AppColors.instance.transparent,
            ),
          ),
        );
  }
}