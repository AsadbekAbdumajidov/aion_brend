import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/cubit/favorite/favorite_cubit.dart';
import 'package:aion/src/cubit/favorite/favorite_state.dart';
import 'package:aion/src/views/tabs/favorite/favorite_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarProductWidget extends StatelessWidget {
  const SimilarProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            "https://ichef.bbci.co.uk/news/640/cpsprodpb/65EC/production/_124429062_gettyimages-1240103375.jpg",
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
}
