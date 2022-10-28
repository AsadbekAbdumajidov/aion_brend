import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class CardAddWidget extends StatelessWidget {
  const CardAddWidget(
      {Key? key, required this.cardName, required this.cardNumber, required this.onTap})
      : super(key: key);
  final String cardName;
  final String cardNumber;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: he(58),
        width: wi(166),
        decoration: AppDecoration.instance.decorationColorWhiteRadius14,
        child:InkWell(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(cardName, style: AppTextStyles.instance.styleW700S15Blackwith05),
              Text(cardNumber,
                  style: AppTextStyles.instance.styleW500S13BlackWith05),
            ],
          ),
        ),
      ),
    );
  }
}
