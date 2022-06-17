import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/order_description/widget/bottom_card_item.dart';
import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(110),
      width: wi(343),
      decoration: AppDecoration.instance.decorationColorWhiteRadiusAll13,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: he(16), horizontal: wi(24)),
        child: Column(
          children: [
            const BottomCardItem(title: "Buyurtma:", price: "3.000.000"),
            Padding(
                padding: EdgeInsets.symmetric(vertical: he(10)),
                child: const BottomCardItem(
                    title: "Yetkazib berish:", price: "0.0")),
            const BottomCardItem(title: "Jami:", price: "3.000.000"),
          ],
        ),
      ),
    );
  }
}
