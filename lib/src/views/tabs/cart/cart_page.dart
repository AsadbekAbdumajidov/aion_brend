import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/views/tabs/cart/widgets/bottom_button_widget.dart';
import 'package:aion/src/views/tabs/cart/widgets/order_item_widget.dart';
import 'package:flutter/material.dart';
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
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(16)),
            child: SizedBox(
              height: context.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: he(10)),
                  itemBuilder: (_, __) {
                    return const OrderItemWidget();
                  }),
            ),
          ),
         const Positioned(
          bottom: 0,
          child:  ButtonForOrder())
        ],
      ),
    );
  }
}