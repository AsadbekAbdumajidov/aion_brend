import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/views/cards/widget/card_item_widget.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Karta qo’shish",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          children: [
            CardItemWidget(
              isAdd: "assets/svg/is_add.svg",
              addOntap: () {
                Navigator.pushNamed(context, AppRoutes.cardEdit);
              },
              card: "Humo",
              cardHolder: "Karta kiritilmagan",
              cardNum: "0000 0000 0000 0000",
              icCardIcon: "ic_humo",
              validityPeriod: "0232",
            ),
            CardItemWidget(
              isAdd: "assets/svg/is_add.svg",
              addOntap: () {
                Navigator.pushNamed(context, AppRoutes.cardEdit);
              },
              card: "Uzcard",
              cardHolder: "Karta kiritilmagan",
              cardNum: "0000 0000 0000 0000",
              icCardIcon: "ic_uzCard",
              validityPeriod: "0655",
            )
          ],
        ),
      ),
    );
  }
}
