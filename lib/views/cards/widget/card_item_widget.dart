import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    Key? key,
    required this.card,
    required this.addOntap,
    required this.icCardIcon,
    required this.cardNum,
    required this.validityPeriod,
    required this.cardHolder,
     this.isAdd,
  }) : super(key: key);

  final String card;
  final Function() addOntap;
  final String icCardIcon;
  final String cardNum;
  final String validityPeriod;
  final String? isAdd;
  final String cardHolder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: he(9)),
      child: Container(
        
        decoration: AppDecoration.instance.decorationColorWhiteRadiusAll13,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: he(16)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wi(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$card Karta kiriting",
                        style: AppTextStyles.instance.styleW500S18Black),
                    GestureDetector(
                      onTap: addOntap,
                      child: SvgPicture.asset(
                        isAdd ?? "",
                        height: he(20),
                        width: wi(20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: he(8)),
                child:
                    Divider(color: AppColors.instance.black.withOpacity(0.5)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wi(14)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svg/ic_credit_card.svg",
                          height: he(48),
                          width: wi(48),
                        ),
                        const SizedBox(width: 14),
                        Text(cardNum,
                            style: AppTextStyles.instance.styleW400S15Black
                                .copyWith(
                                    color: AppColors.instance.black
                                        .withOpacity(0.6))),
                      ],
                    ),
                    Text(validityPeriod,
                        style: AppTextStyles.instance.styleW400S15Black
                            .copyWith(
                                color:
                                    AppColors.instance.black.withOpacity(0.6))),
                  ],
                ),
              ),
              
                    Divider(color: AppColors.instance.black.withOpacity(0.5)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: wi(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: he(8)),
                      child: Text(cardHolder,
                          style: AppTextStyles.instance.styleW500S18Black),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/png/$icCardIcon.png",
                        height: he(39),
                        width: wi(45),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
