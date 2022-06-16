import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Yangiliklarni kuzatib borish",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16),vertical: he(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [SvgPicture.asset(AppIcons.instance.icBell),
                SizedBox(width: wi(16)),
                Text("Habarlarni boshqarish",
                    style: AppTextStyles.instance.styleW400S15Black),],),
                CupertinoSwitch(
                    activeColor: AppColors.instance.green,
                    value: true,
                    trackColor: AppColors.instance.grey,
                    onChanged: (value) {}),
              ],
            ),
            LittelButton(title: "Saqlash", onTap: (){})
          ],
        ),
      )),
    );
  }
}
