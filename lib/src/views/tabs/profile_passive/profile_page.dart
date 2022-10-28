import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/views/tabs/profile_active/_widget/title_button_widget.dart';
import 'package:aion/src/views/tabs/profile_passive/_widget/text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePassive extends StatelessWidget {
  const ProfilePassive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meni Kabinetim",
              style: AppTextStyles.instance.styleW400S17Black),
              
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(18)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: he(14), bottom: he(22)),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: he(40),
                      backgroundColor: AppColors.instance.grey,
                      child: SvgPicture.asset(
                        AppIcons.instance.icUser,
                      ),
                    ),
                    SizedBox(width: wi(14)),
                    Text("Siz hali tizimga \nkirmagansiz",
                        style:
                            AppTextStyles.instance.styleW400S15BlackOpacity04)
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: AppButtonStyle
                          .instance.buttonStyleRadius18WhiteW110H54,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signIn);
                      },
                      child: Text("Kirish",
                          style: AppTextStyles.instance.styleW500S14Black)),
                  SizedBox(width: wi(10)),
                  OutlinedButton(
                      style: AppButtonStyle
                          .instance.buttonStyleRadius18TransparentW160H54,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.signUp);
                      },
                      child: Text("Ro'yxatdan o'tish",
                          style: AppTextStyles.instance.styleW500S14Black)),
                ],
              ),
              SizedBox(height: he(56)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TitleWidget(
                            onTap: () {
                              Navigator.pushNamed(context, AppRoutes.location);
                            },
                            title: "Yetkazib berish manzili",
                            icon: AppIcons.instance.icMap),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: he(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AppIcons.instance.icBell),
                                  SizedBox(width: wi(16)),
                                  Text("Habarlarni boshqarish",
                                      style: AppTextStyles
                                          .instance.styleW400S15Black),
                                ],
                              ),
                              CupertinoSwitch(
                                  activeColor: AppColors.instance.green,
                                  value: true,
                                  trackColor: AppColors.instance.grey,
                                  onChanged: (value) {}),
                            ],
                          ),
                        ),
                        TitleWidget(
                            onTap: () {
                              Navigator.pushNamed(context, AppRoutes.about);
                            },
                            title: "Biz haqimizda",
                            icon: AppIcons.instance.icInfo),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: he(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          TextButtonWidget(title: "Facebook", url: ""),
                          TextButtonWidget(title: "Instagram", url: ""),
                          TextButtonWidget(title: "Telegram", url: ""),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
