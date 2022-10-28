import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class CountContainer extends StatelessWidget {
  final String title;
  final void Function() func;
  const CountContainer(this.title, this.func, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: he(25),
        width: wi(25),
        decoration:
            AppDecoration.instance.decorationColorBackgroundBorderRadiusAll8,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            title,
            style: AppTextStyles.instance.styleW600S14Black,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
