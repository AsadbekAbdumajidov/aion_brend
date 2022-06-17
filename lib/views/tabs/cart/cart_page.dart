import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/cart/widgets/bottom_button_widget.dart';
import 'package:aion/views/tabs/cart/widgets/order_item_widget.dart';
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
                    return const OrderItemWidget();
                  }),
            ),
            const ButtonForOrder()
          ],
        ),
      ),
    );
  }
}
