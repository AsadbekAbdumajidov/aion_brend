import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/components/blur_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instance.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.instance.transparent,
        flexibleSpace: const BlurWidget(),
        title: Text("Ichki kategoriya",
            style: AppTextStyles.instance.styleW400S17Black),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: GridView.builder(
            padding: EdgeInsets.only(top: he(110),bottom: he(10)),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 25,
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: he(105),
              crossAxisSpacing: he(14),
              mainAxisSpacing: he(12),
              crossAxisCount: 3,
            ),
            itemBuilder: (_, __) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.subcategory);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.instance.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(11))),
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              "https://printc12.com.ua/wp-content/uploads/2021/08/shapkah.png",
                          height: he(81),
                          width: wi(81),
                        ),
                        Text(
                          "Shapkalar",
                          style: AppTextStyles.instance.styleW500S13Black,
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
