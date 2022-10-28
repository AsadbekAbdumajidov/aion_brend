import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/cubit/cart_count/cart_count_cubit.dart';
import 'package:aion/src/cubit/cart_count/cart_count_state.dart';
import 'package:aion/src/cubit/chech_box/chech_box_cubit.dart';
import 'package:aion/src/cubit/chech_box/chech_box_state.dart';
import 'package:aion/src/views/tabs/cart/widgets/count_container.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: he(10)),
      child: Container(
        height: he(109),
        width: context.w,
        decoration: AppDecoration.instance.decorationColorWhiteRadiusAll13,
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
                    "https://frankfurt.apollo.olxcdn.com/v1/files/559qspr9ie4e1-UZ/image;s=644x461",
                fit: BoxFit.cover,
                height: context.h,
                width: wi(104),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: wi(15), right: wi(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rosatro mon shirt ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: AppTextStyles.instance.styleW600S15Black,
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: wi(14)),
                              child: CountContainer("XII", () {}),
                            ),
                            BlocProvider(
                              create: (context) => CheckBoxCubit(),
                              child: BlocConsumer<CheckBoxCubit, CheckBoxState>(
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
                      padding: EdgeInsets.only(top: he(3), bottom: he(11)),
                      child: Text("120 000 so’m",
                          style: AppTextStyles.instance.styleW700S15Blue),
                    ),
                    BlocProvider(
                      create: (context) => CartCountCubit(),
                      child: BlocConsumer<CartCountCubit, CartCountState>(
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
