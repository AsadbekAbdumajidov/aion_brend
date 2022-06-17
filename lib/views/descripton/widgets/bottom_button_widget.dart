import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: context.w,
        color: AppColors.instance.white,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: wi(16), vertical: he(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("160 000 so’m",
                      style: AppTextStyles.instance.stylew500S20Black),
                  ElevatedButton(
                    style: AppButtonStyle
                        .instance.buttonStyleBorder8ColorPrimaryHe42Wi147,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Savatga qo’shish",
                        style: AppTextStyles.instance.styleW500S16White),
                  ),
                ],
              ),
            ),
            Divider(
                color: AppColors.instance.black.withOpacity(0.4),
                height: he(0)),
          ],
        ),
      ),
    );
  }
}
