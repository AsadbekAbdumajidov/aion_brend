import 'package:aion/core/constants/app_button_style.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class ButtonForOrder extends StatelessWidget {
  const ButtonForOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: he(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("3 160 000 so’m",
                  style: AppTextStyles.instance.styleW500S18Black),
              SizedBox(height: he(5)),
              Text("Jami summa",
                  style: AppTextStyles.instance.styleW500S12Black),
            ],
          ),
          ElevatedButton(
              style: AppButtonStyle
                  .instance.buttonStyleBorder8ColorPrimaryHe42Wi147,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.orderDescription);
              },
              child: Text(
                "Buyurtma berish",
                maxLines: 1,
                style: AppTextStyles.instance.styleW500S16White,
              ))
        ],
      ),
    );
  }
}
