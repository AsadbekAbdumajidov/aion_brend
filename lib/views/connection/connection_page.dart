import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:aion/views/tabs/profile_passive/_widget/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Connection extends StatelessWidget {
  const Connection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          title: "Bog'lanish",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.instance.icPhone),
                      SizedBox(width: wi(20)),
                      Text("+998909540690",
                          style: AppTextStyles.instance.styleW400S15Black),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: he(30)),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.instance.icPhone),
                        SizedBox(width: wi(20)),
                        Text("+998909540690",
                            style: AppTextStyles.instance.styleW400S15Black),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.instance.icMessage),
                      SizedBox(width: wi(20)),
                      Text("+998909540690",
                          style: AppTextStyles.instance.styleW400S15Black),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: he(30)),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.instance.icMap),
                        SizedBox(width: wi(20)),
                        Text("Toshkent shahar Chilonzor 24 - daha",
                            style: AppTextStyles.instance.styleW400S15Black),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.instance.icSend),
                      SizedBox(width: wi(20)),
                      Text("@asadbekabdumajidov",
                          style: AppTextStyles.instance.styleW400S15Black),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextButtonWidget(title: "Facebook", url: ""),
                  TextButtonWidget(title: "Instagram", url: ""),
                  TextButtonWidget(title: "Telegram", url: ""),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
