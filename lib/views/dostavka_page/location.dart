import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          title: "Yetkazib berish manzilini kiriting",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: wi(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: he(14)),
            Container(
              height: he(127),
              decoration:
                  AppDecoration.instance.decorationColorWhiteRadiusAll13,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: he(16)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Asadbek Abdumajidov",
                              style: AppTextStyles.instance.styleW700S18Black),
                          GestureDetector(
                            child: SvgPicture.asset(
                                AppIcons.instance.icDostavkaUpdate),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                    Divider(
                      height: he(10),
                      color: AppColors.instance.black.withOpacity(0.3),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: wi(20)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "25-uy, Hamid  Olimjon, Shayhontoxur  tumani,  Toshkent,  100500, Toshkent  vil.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: AppTextStyles.instance.styleW500S14Black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: wi(10)),
                            child: const Icon(Icons.location_on_outlined),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: he(27)),
            GestureDetector(
              child: SvgPicture.asset(AppIcons.instance.icDostavkaAdd),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.locationAdd);
              },
            ),
          ],
        ),
      ),
    );
  }
}
