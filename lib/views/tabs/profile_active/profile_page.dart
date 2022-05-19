import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/profile_active/_widget/title_button_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileActive extends StatelessWidget {
  const ProfileActive({Key? key}) : super(key: key);

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
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CachedNetworkImage(
                        height: he(85),
                        width: wi(90),
                        imageUrl:
                            "https://i2.cdn.turner.com/cnnnext/dam/assets/140926165711-john-sutter-profile-image-large-169.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: wi(14)),
                    Text("Asadbek \nAbdumajidov",
                        style: AppTextStyles.instance.styleW500S18Black),
                  ],
                ),
              ),
              Container(
                height: he(404),
                decoration: AppDecoration.instance.decorationColorWhiteRadius14,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: wi(22), vertical: he(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TitleWidget(
                          onTap: () {},
                          title: "Yetkazib berish manzili",
                          icon: AppIcons.instance.icMap),
                      TitleWidget(
                          onTap: () {},
                          title: "Yangiliklarni kuzatib borish",
                          icon: AppIcons.instance.icBell),
                      TitleWidget(
                          onTap: () {},
                          title: "Mening zakazlarim",
                          icon: AppIcons.instance.icShop),
                      TitleWidget(
                          onTap: () {},
                          title: "karta qo’shish",
                          icon: AppIcons.instance.icCreditCart),
                      TitleWidget(
                          onTap: () {},
                          title: "Bog’lanish",
                          icon: AppIcons.instance.icMail),
                      TitleWidget(
                          onTap: () {},
                          title: "Sozlamalar",
                          icon: AppIcons.instance.icSetting),
                      TitleWidget(
                          onTap: () {},
                          title: "Biz haqimizda",
                          icon: AppIcons.instance.icInfo),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
