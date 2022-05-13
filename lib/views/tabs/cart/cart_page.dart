import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Savat", style: AppTextStyles.instance.styleW400S17Black),
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(AppIcons.instance.icTrash))),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
