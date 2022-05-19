import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/descripton_count/descripton_count_cubit.dart';
import 'package:aion/cubit/descripton_count/descripton_count_state.dart';
import 'package:aion/cubit/favorite/favorite_cubit.dart';
import 'package:aion/cubit/favorite/favorite_state.dart';
import 'package:aion/views/descripton/widgets/app_bar_widget.dart';
import 'package:aion/views/descripton/widgets/count_container.dart';
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
          title: "Futbolka",
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
                fotoBuilder(context),
                Text("Razmerini tanlang",
                    style: AppTextStyles.instance.stylew500S20Black),
                sizeBuilder(context),
                Text("Donasini kiriting",
                    style: AppTextStyles.instance.stylew500S20Black),
                BlocProvider(
                  create: (context) => DescriptonCountCubit(),
                  child:
                      BlocConsumer<DescriptonCountCubit, DescriptonCountState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return countMethod(context);
                    },
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
                oxshashMahsulotlar(context),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: context.w,
                color: AppColors.instance.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: wi(16), vertical: he(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("160 000 so’m",
                              style: AppTextStyles.instance.stylew500S20Black),
                          ElevatedButton(
                            style: AppButtonStyle
                                .instance.buttonStyleBorder8ColorPrimary,
                            onPressed: () {},
                            child: Text("Savatga qo’shish",
                                style:
                                    AppTextStyles.instance.styleW500S16White),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                        color: AppColors.instance.black.withOpacity(0.4),
                        height: he(0)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Count Method
  Padding countMethod(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: he(13), bottom: he(20)),
      child: Row(
        children: [
          CountforContainer("-", () {
            context.read<DescriptonCountCubit>().countRemove();
          }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(10)),
            child: CountforContainer(
                context.watch<DescriptonCountCubit>().state.count.toString(),
                () {}),
          ),
          CountforContainer("+", () {
            context.read<DescriptonCountCubit>().countAdd();
          }),
        ],
      ),
    );
  }

// Ohshash mahsulotlar uchun builder
  GridView oxshashMahsulotlar(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(top: he(20), bottom: he(75)),
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
      itemBuilder: (_, __) => InkWell(
        onTap: (() {
          Navigator.pushNamed(context, AppRoutes.descripton);
        }),
        child: Container(
          height: he(244),
          decoration: BoxDecoration(
              color: AppColors.instance.white,
              borderRadius: const BorderRadius.all(Radius.circular(11))),
          child: Column(
            children: [
              Stack(
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
                            "https://www.wantedshop.ru/upload/iblock/b8a/b8abee5262b651f1c0cfd66ba7ac1238.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.instance.black.withOpacity(0.3),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: BlocProvider(
                          create: (context) => FavoriteCubit(),
                          child: BlocConsumer<FavoriteCubit, FavoriteState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return favorite(context);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: wi(10), vertical: he(5)),
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
                            style: AppTextStyles.instance.stylew600S14Primary)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Size tanlash uchun builder
  SizedBox sizeBuilder(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: he(55),
      child: ListView.builder(
          itemCount: 4,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: he(10)),
          itemBuilder: (_, __) {
            return Padding(
              padding: EdgeInsets.only(right: wi(14)),
              child: InkWell(
                onTap: (() {}),
                child: Container(
                  height: he(25),
                  width: wi(40),
                  decoration:
                      AppDecoration.instance.decorationBorderPrimaryRadius6,
                  child: Center(
                      child: Text("M",
                          style: AppTextStyles.instance.styleW500S18Black)),
                ),
              ),
            );
          }),
    );
  }

// Foto tanlash uchun builder
  SizedBox fotoBuilder(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: he(70),
      child: ListView.builder(
          itemCount: 4,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: he(10)),
          itemBuilder: (_, __) {
            return Padding(
              padding: EdgeInsets.only(right: wi(14)),
              child: InkWell(
                onTap: (() {}),
                child: Container(
                  height: he(49),
                  width: wi(60),
                  decoration:
                      AppDecoration.instance.decorationBorderPrimaryRadius6,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: CachedNetworkImage(
                      imageUrl: "https://source.unsplash.com/random/$__",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

// Like tugmasi uchun
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
