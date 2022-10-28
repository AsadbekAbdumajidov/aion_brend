import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class BottomCardItem extends StatelessWidget {
  const BottomCardItem({Key? key, required this.title, required this.price})
      : super(key: key);

  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: AppTextStyles.instance.styleW400S15BlackOpacity04),
        Text("$price uzs", style: AppTextStyles.instance.styleW600S15Black),
      ],
    );
  }
}
