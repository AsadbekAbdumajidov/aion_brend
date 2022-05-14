import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class CountforContainer extends StatelessWidget {
  final String title;
  final void Function() func;
  const CountforContainer(this.title, this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: he(35),
        width: wi(40),
        decoration: BoxDecoration(
            color: AppColors.instance.white,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.instance.styleW500S18Black,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
