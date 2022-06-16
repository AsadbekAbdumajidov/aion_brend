import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/favorite/favorite_cubit.dart';
import 'package:aion/views/descripton/widgets/bottom_button_widget.dart';
import 'package:aion/views/descripton/widgets/count_container.dart';
import 'package:aion/views/descripton/widgets/foto_builder_widget.dart';
import 'package:aion/views/descripton/widgets/similar_product_widget.dart';
import 'package:aion/views/descripton/widgets/size_builder_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DescriptonPage extends StatefulWidget {
  const DescriptonPage({Key? key}) : super(key: key);

  @override
  State<DescriptonPage> createState() => _DescriptonPageState();
}

class _DescriptonPageState extends State<DescriptonPage> {
  int _current = 0;
  List img = [
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/ba/29/5c/img-worlds-of-adventure.jpg?w=1200&h=-1&s=1",
    "https://media-cdn.tripadvisor.com/media/photo-s/15/a4/9b/77/legacy-hotel-at-img-academy.jpg",
    "https://dubaitrippackages.files.wordpress.com/2017/11/2-imgdinosaurs_base.jpg"
  ];
  final CarouselController _controller = CarouselController();
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
                Stack(
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          height: he(251),
                          viewportFraction: 1.0,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                          autoPlay: false),
                      items: img.map((portfolio) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: CachedNetworkImage(
                                width: MediaQuery.of(context).size.width - 32,
                                height: MediaQuery.of(context).size.width - 22,
                                fit: BoxFit.cover,
                                imageUrl: portfolio ?? "",
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Positioned(
                      bottom: 12,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: img.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == entry.key
                                      ? AppColors.instance.white
                                      : AppColors.instance.white
                                          .withOpacity(0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: he(10)),
                Text("Rangini tanlang",
                    style: AppTextStyles.instance.stylew500S20Black),
                FotoBuilderWidget(imgList: img, selectedIndex: _current),
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
                const SimilarProductWidget()
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
