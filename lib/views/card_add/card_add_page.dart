import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardAdd extends StatelessWidget {
  const CardAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          title: "karta qo’shish",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: he(186),
              width: wi(343),
              decoration:
                  AppDecoration.instance.decorationColorWhiteRadiusAll13,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: he(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Humo kartani kiriting",
                              style: AppTextStyles.instance.styleW700S18Black),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/svg/is_add.svg",
                              height: he(20),
                              width: wi(20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: he(8)),
                      child: Divider(
                          color: AppColors.instance.black.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(14)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/ic_credit_card.svg",
                                height: he(48),
                                width: wi(48),
                              ),
                              const SizedBox(width: 14),
                              Text("0000 0000 0000 0000",
                                  style: AppTextStyles
                                      .instance.styleW400S15Black
                                      .copyWith(
                                          color: AppColors.instance.black
                                              .withOpacity(0.6))),
                            ],
                          ),
                          Text("00/00",
                              style: AppTextStyles.instance.styleW400S15Black
                                  .copyWith(
                                      color: AppColors.instance.black
                                          .withOpacity(0.6))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: he(8)),
                      child: Divider(
                          color: AppColors.instance.black.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Karta qo’shilmagan",
                              style: AppTextStyles.instance.styleW500S18Black),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/png/ic_humo.png",
                              height: he(39),
                              width: wi(45),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: he(186),
              width: wi(343),
              decoration:
                  AppDecoration.instance.decorationColorWhiteRadiusAll13,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: he(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Uzcard Karta kiriting",
                              style: AppTextStyles.instance.styleW700S18Black),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/svg/is_add.svg",
                              height: he(20),
                              width: wi(20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: he(8)),
                      child: Divider(
                          color: AppColors.instance.black.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(14)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/ic_credit_card.svg",
                                height: he(48),
                                width: wi(48),
                              ),
                              const SizedBox(width: 14),
                              Text("0000 0000 0000 0000",
                                  style: AppTextStyles
                                      .instance.styleW400S15Black
                                      .copyWith(
                                          color: AppColors.instance.black
                                              .withOpacity(0.6))),
                            ],
                          ),
                          Text("00/00",
                              style: AppTextStyles.instance.styleW400S15Black
                                  .copyWith(
                                      color: AppColors.instance.black
                                          .withOpacity(0.6))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: he(8)),
                      child: Divider(
                          color: AppColors.instance.black.withOpacity(0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Karta qo’shilmagan",
                              style: AppTextStyles.instance.styleW500S18Black),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/png/ic_uzCard.png",
                              height: he(39),
                              width: wi(45),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
