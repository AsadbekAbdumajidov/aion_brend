import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class OnTheWay extends StatelessWidget {
  const OnTheWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (_, __) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: he(183),
              width: wi(335),
              decoration:
                  AppDecoration.instance.decorationColorWhiteRadiusAll13,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: he(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: wi(21)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Buyurtma No238562312",
                                  style:
                                      AppTextStyles.instance.styleW600S14Black),
                              Text(
                                "20/03/2020",
                                style: AppTextStyles.instance.styleW500S12Black,
                              )
                            ],
                          ),
                        ),
                        Divider(
                            color: AppColors.instance.black.withOpacity(0.5),
                            height: he(20)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: wi(21), vertical: he(13)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Miqdori:",
                                  style: AppTextStyles
                                      .instance.styleW400S15BlackOpacity04),
                              Text("$__",
                                  style:
                                      AppTextStyles.instance.styleW600S15Black),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: wi(21)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Umumiy hisob:",
                                  style: AppTextStyles
                                      .instance.styleW400S15BlackOpacity04),
                              Text("3.000.000 uzs",
                                  style:
                                      AppTextStyles.instance.styleW600S15Black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: wi(21)),
                      child: ElevatedButton(
                        
                        style: AppButtonStyle
                            .instance.buttonStyleBorder8ColorPrimaryHe36Wi101,
                        onPressed: () {},
                        child: Text("Yolda",
                            style: AppTextStyles.instance.styleW500S16White),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          );
        });
  }
}
