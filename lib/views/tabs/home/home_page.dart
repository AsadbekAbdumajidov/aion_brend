import 'package:aion/core/components/carusel_slider.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/home/widgets/cupertino_tab_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: he(10)),
          child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppIcons.instance.icSearchField,
                height: he(50),
              )),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(12)),
              child: const CupertinoTapBar(),
            ),
            const Carusel(),
            SizedBox(height: he(20)),
            Text("Barchasi", style: AppTextStyles.instance.styleW600S15Black),
            GridView.builder(
              padding: EdgeInsets.only(top: he(10)),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 15,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: he(244),
                crossAxisSpacing: he(5),
                mainAxisSpacing: he(5),
                crossAxisCount: 2,
              ),
              itemBuilder: (_, __) => Container(
                height: he(244),
                decoration: BoxDecoration(
                    color: AppColors.instance.white,
                    borderRadius: const BorderRadius.all(Radius.circular(11))),
                child: Column(
                  children: [
                    SizedBox(
                      height: he(182),
                      width: context.w,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(11),
                            topRight: Radius.circular(11)),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://img.freepik.com/free-psd/front-view-of-man-posing-while-wearing-t-shirt_23-2148457384.jpg?w=2000",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: wi(10),vertical: he(5)),
                      child: Column(
                        children: [
                           Text(
                            "2022 new collection. Narxi: 179.000. O'lcham: M-5XL. ",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: AppTextStyles.instance.styleW500S12Black,
                          ),
                          SizedBox(height: he(5)),
                          Row(
                            children: [
                              Image.asset(
                                "assets/png/ic_flag.png",
                                height: he(14),
                                width: wi(22),
                              ),
                              SizedBox(width: wi(10)),
                              Text("150 000",
                                  style:
                                      AppTextStyles.instance.stylew600S14Primary)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
