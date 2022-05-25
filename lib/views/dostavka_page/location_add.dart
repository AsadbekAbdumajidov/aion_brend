import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:flutter/material.dart';

class LocationAdd extends StatelessWidget {
  const LocationAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController shahar = TextEditingController();
    TextEditingController viloyat = TextEditingController();
    TextEditingController manzil = TextEditingController();

    return Scaffold(
      appBar: ProfileAppBar(
          title: "Yetkazib berish manzilini kiriting",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                    child: Text("Shaharingizni kiriting",
                        style: AppTextStyles.instance.styleW400S15Black),
                  ),
                  CustomTextField(
                      onChange: (v) {},
                      hintText: "Shahar",
                      prefixIcon:const Icon(Icons.location_city),
                      textEditingController: shahar),
                  Padding(
                    padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                    child: Text("Viloyatingizni kiriting",
                        style: AppTextStyles.instance.styleW400S15Black),
                  ),
                  CustomTextField(
                      onChange: (v) {},
                      hintText: "Viloyat",
                      prefixIcon: const Icon(Icons.home_filled),
                      textEditingController: viloyat),
                  Padding(
                    padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                    child: Text("Manzilingizni kiriting",
                        style: AppTextStyles.instance.styleW400S15Black),
                  ),
                  CustomTextField(
                      onChange: (v) {},
                      hintText: "Manzil",
                      prefixIcon:const Icon(Icons.edit_location_outlined),
                      textEditingController: manzil),
                  SizedBox(height: he(16)),
                  Text(
                      "Buyurtmangiz yetkizilishi kerak bo'lgan manzlni kiriting !",
                      style: AppTextStyles.instance.styleW500S13BlackWith05)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: he(20)),
                child: LittelButton(title: "Saqlash", onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
