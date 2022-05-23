import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:aion/views/dostavka_page/_widget/container_field.dart';
import 'package:flutter/material.dart';

class LocationAdd extends StatelessWidget {
  LocationAdd({Key? key}) : super(key: key);
  TextEditingController shahar = TextEditingController();
  TextEditingController viloyat = TextEditingController();
  TextEditingController manzil = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(
          title: "Yetkazib berish manzilini kiriting",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                ContainerField(
                    hintText: "Shaharingizni kiriting", controller: shahar),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: he(5)),
                  child: ContainerField(
                      hintText: "Viloyatingizni kiriting", controller: viloyat),
                ),
                ContainerField(
                    hintText: "Uy manzilingizni kiriting", controller: manzil),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: wi(16), bottom: he(20)),
              child: LittelButton(title: "Saqlash", onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
