import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/custom_button/custom_button.dart';
import 'package:aion/src/views/order_description/widget/adress_item_widget.dart';
import 'package:aion/src/views/order_description/widget/bottom_card_widget.dart';
import 'package:aion/src/views/order_description/widget/cupertino_alert_dialog.dart';
import 'package:flutter/material.dart';

class OrderDescription extends StatelessWidget {
  const OrderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Tolovni amalga oshirish",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const AdressItemWidget(),
                SizedBox(height: he(9)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CardAddWidget(
                //       cardName: "Humo",
                //       cardNumber: "0000 0000 0000",
                //       onTap: () {},
                //     ),
                //     CardAddWidget(
                //       cardName: "Uzcard",
                //       cardNumber: "0000 0000 0000",
                //       onTap: () {},
                //     ),
                //   ],
                // ),
                // CardItemWidget(
                //   addOntap: () {},
                //   card: "",
                //   cardHolder: "Karta kiritilmagan",
                //   cardNum: "0000 0000 0000 0000",
                //   icCardIcon: "ic_uzCard",
                //   validityPeriod: "06/55",
                // )
              ],
            ),
            Column(
              children: [
                const BottomCardWidget(),
                Padding(
                  padding: EdgeInsets.only(top: he(10), bottom: he(16)),
                  child: CustomButton(
                      title: "To’lovni amalga oshirish",
                      onTap: () {
                        CupertinoShowDialog.showDialog(context: context);
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
