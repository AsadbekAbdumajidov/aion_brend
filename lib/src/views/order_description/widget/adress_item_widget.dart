import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/size_konfig.dart';

class AdressItemWidget extends StatelessWidget {
  const AdressItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(127),
      decoration: AppDecoration.instance.decorationColorWhiteRadius14,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: he(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Yetkazib berish manzili",
                      style: AppTextStyles.instance.styleW500S18Black),
                  GestureDetector(
                    child: SvgPicture.asset(AppIcons.instance.icDostavkaUpdate),
                    onTap: () {},
                  )
                ],
              ),
            ),
            Divider(
              height: he(10),
              color: AppColors.instance.black.withOpacity(0.3),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(20)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "25-uy, Hamid  Olimjon, Shayhontoxur  tumani,  Toshkent,  100500, Toshkent  vil.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: AppTextStyles.instance.styleW500S14Black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: wi(10)),
                    child: const Icon(Icons.location_on_outlined),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
