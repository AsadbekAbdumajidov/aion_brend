import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/cubit/cart_count/cart_count_cubit.dart';
import 'package:aion/cubit/cart_count/cart_count_state.dart';
import 'package:aion/cubit/chech_box/chech_box_cubit.dart';
import 'package:aion/cubit/chech_box/chech_box_state.dart';
import 'package:aion/views/tabs/cart/widgets/count_container.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Savat", style: AppTextStyles.instance.styleW400S17Black),
        actions: [
          GestureDetector(
              onTap: () {},
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset(AppIcons.instance.icTrash))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: he(567),
              child: ListView.builder(
                  itemCount: 5,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: he(10)),
                  itemBuilder: (_, __) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: he(10)),
                      child: Container(
                        height: he(109),
                        width: context.w,
                        decoration: AppDecoration
                            .instance.decorationColorWhiteRadiusAll13,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Row(children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(13),
                                bottomLeft: Radius.circular(13),
                              ),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://pmall.uz/images/detailed/10/photo_2021-01-08_13-42-10__3_.jpg",
                                fit: BoxFit.cover,
                                height: context.h,
                                width: wi(104),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: wi(15), right: wi(12)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Rosatro mon shirt ",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: AppTextStyles
                                              .instance.styleW600S15Black,
                                          textAlign: TextAlign.left,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  right: wi(14)),
                                              child:
                                                  CountContainer("XII", () {}),
                                            ),
                                            BlocProvider(
                                              create: (context) =>
                                                  CheckBoxCubit(),
                                              child: BlocConsumer<CheckBoxCubit,
                                                  CheckBoxState>(
                                                listener: (context, state) {},
                                                builder: (context, state) {
                                                  return checkMethod(context);
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: he(3), bottom: he(11)),
                                      child: Text("120 000 so’m",
                                          style: AppTextStyles
                                              .instance.styleW700S15Blue),
                                    ),
                                    BlocProvider(
                                      create: (context) => CartCountCubit(),
                                      child: BlocConsumer<CartCountCubit,
                                          CartCountState>(
                                        listener: (context, state) {},
                                        builder: (context, state) {
                                          return methodCount(context);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3 160 000 so’m",
                          style: AppTextStyles.instance.styleW500S18Black),
                      SizedBox(height: he(5)),
                      Text("Jami summa",
                          style: AppTextStyles.instance.styleW500S12Black),
                    ],
                  ),
                  ElevatedButton(
                      style: AppButtonStyle
                          .instance.buttonStyleBorder8ColorPrimaryHe42Wi147,
                      onPressed: () {},
                      child: Text(
                        "Buyurtma berish",
                        maxLines: 1,
                        style: AppTextStyles.instance.styleW500S16White,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector checkMethod(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CheckBoxCubit>().checkBox();
      },
      child: SvgPicture.asset(
        context.watch<CheckBoxCubit>().state.check == false
            ? AppIcons.instance.icElipsFalse
            : AppIcons.instance.icElipsTrue,
        height: he(20),
        width: wi(20),
      ),
    );
  }

  // The Count part is output to the method

  Row methodCount(BuildContext context) {
    return Row(
      children: [
        CountContainer("-", () {
          context.read<CartCountCubit>().countRemove();
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(12)),
          child: CountContainer(
              context.watch<CartCountCubit>().state.count.toString(), () {}),
        ),
        CountContainer("+", () {
          context.read<CartCountCubit>().countAdd();
        })
      ],
    );
  }
}
