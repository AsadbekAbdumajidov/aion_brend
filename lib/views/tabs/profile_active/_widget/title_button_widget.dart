import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleWidget extends StatelessWidget {
  final Function() onTap;
  final String title;
  final String icon;
  const TitleWidget({Key? key,required this.onTap,required this.title,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(width: wi(16)),
          Text(title,
              style: AppTextStyles.instance.styleW400S15Black),
        ],
      ),
    );
  }
}
