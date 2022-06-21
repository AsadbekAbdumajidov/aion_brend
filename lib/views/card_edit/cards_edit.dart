import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:flutter/material.dart';

class CardEdit extends StatelessWidget {
  const CardEdit({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(9)),
              child: Container(
                decoration:
                    AppDecoration.instance.decorationColorWhiteRadiusAll13,
                child: Padding(
                  padding: EdgeInsets.all(he(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Karta raqamini kiriting",
                          style: AppTextStyles.instance.styleW500S14Black),
                      SizedBox(
                          width: wi(250),
                          child: SimpleTextField(
                              onChange: (v) {},
                              hintText: "0000 0000 0000 0000",
                              maxLenght: 12,
                              textInputAction: TextInputAction.next)),
                      Text("Mudatini kiriting",
                          style: AppTextStyles.instance.styleW500S14Black),
                      SizedBox(
                          width: wi(80),
                          child: SimpleTextField(
                              onChange: (v) {},
                              hintText: "00/00",
                              maxLenght: 4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: he(8)),
                            child: Text("ism familiya",
                                style:
                                    AppTextStyles.instance.styleW500S18Black),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/png/ic_uzCard.png",
                              height: he(39),
                              width: wi(45),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: he(16)),
              child: LittelButton(
                  title: "Saqlash",
                  onTap: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
