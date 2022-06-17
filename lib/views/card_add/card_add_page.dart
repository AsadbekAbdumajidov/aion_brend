import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/card_add/widget/card_item_widget.dart';
import 'package:flutter/material.dart';

class CardAdd extends StatelessWidget {
  const CardAdd({Key? key}) : super(key: key);

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
        padding:  EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          children: [
            CardItemWidget(
              isAdd: "assets/svg/is_add.svg",
              addOntap: (){},
              card: "Humo",
              cardHolder: "Karta kiritilmagan",
              cardNum: "0000 0000 0000 0000",
              icCardIcon: "ic_humo",
              validityPeriod: "0232",
            ),
            CardItemWidget(
              isAdd: "assets/svg/is_add.svg",
              addOntap: (){},
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
