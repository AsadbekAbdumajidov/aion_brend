import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/favorite/favorite_cubit.dart';
import 'package:aion/views/descripton/widgets/bottom_button_widget.dart';
import 'package:aion/views/descripton/widgets/count_container.dart';
import 'package:aion/views/descripton/widgets/foto_builder_widget.dart';
import 'package:aion/views/descripton/widgets/similar_builder_widget.dart';
import 'package:aion/views/descripton/widgets/size_builder_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DescriptonPage extends StatelessWidget {
  const DescriptonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Fudbolka",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          rightIcon: Icons.favorite_border,
          rightOntap: () {},
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: wi(16)),
              children: [
                Padding(
                  padding: EdgeInsets.only(top: he(20), bottom: he(10)),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://www.wantedshop.ru/upload/iblock/b8a/b8abee5262b651f1c0cfd66ba7ac1238.jpg",
                      fit: BoxFit.cover,
                      height: he(251),
                      width: wi(340),
                    ),
                  ),
                ),
                Text("Rangini tanlang",
                    style: AppTextStyles.instance.stylew500S20Black),
                const FotoBuilderWidget(),
                Text("Razmerini tanlang",
                    style: AppTextStyles.instance.stylew500S20Black),
                const SizeBuilderWidget(),
                Text("Donasini kiriting",
                    style: AppTextStyles.instance.stylew500S20Black),
                Padding(
                  padding: EdgeInsets.only(top: he(13), bottom: he(20)),
                  child: Row(
                    children: [
                      CountforContainer("-", () {}),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: wi(10)),
                        child: CountforContainer("1", () {}),
                      ),
                      CountforContainer("+", () {}),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: he(50),
                      width: wi(50),
                      decoration:
                          AppDecoration.instance.decorationColorWhiteRadius14,
                      child: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(
                          "assets/svg/ic_dostavka.svg",
                        ),
                      ),
                    ),
                    SizedBox(width: wi(20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Yetkazib berish",
                            style: AppTextStyles.instance.styleW600S15Black),
                        Text("15 kundan 20 kungacha yetkazib beriladi",
                            style: AppTextStyles.instance.styleW500S13Black),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(14)),
                  child: Text(
                      "matbaa va matn terish sanoatining oddiygina soxta matnidir. Lorem Ipsum 1500-yillardan beri sanoatning standart matbaa va matn terish sanoatining",
                      style: AppTextStyles.instance.styleW500S14Black,
                      maxLines: 3),
                ),
                Text("O’xshash Mahsulotlar",
                    style: AppTextStyles.instance.stylew500S20Black),
                const SimilarWidget()
              ],
            ),
            const BottomButtonWidget()
          ],
        ),
      ),
    );
  }

// For the Like button
  GestureDetector favorite(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<FavoriteCubit>().favoriteCheck();
      },
      child: SvgPicture.asset(
        context.watch<FavoriteCubit>().state.favorite == false
            ? AppIcons.instance.icLikeFalse
            : AppIcons.instance.icLikeTrue,
        height: he(20),
        width: wi(20),
      ),
    );
  }
}
