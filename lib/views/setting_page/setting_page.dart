import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:aion/core/widgets/profile_app_bar/profile_app_bar.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController ism = TextEditingController();
    TextEditingController familiya = TextEditingController();
    TextEditingController nomer = TextEditingController();
    return Scaffold(
      appBar: ProfileAppBar(
          title: "Sozlamalar",
          leftIcon: AppIcons.instance.icArrowBack,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: he(14), bottom: he(24)),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: CachedNetworkImage(
                      height: he(85),
                      width: wi(90),
                      imageUrl:
                          "https://i2.cdn.turner.com/cnnnext/dam/assets/140926165711-john-sutter-profile-image-large-169.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: wi(24)),
                  Text("Asadbek \nAbdumajidov",
                      style: AppTextStyles.instance.styleW500S18Black),
                ],
              ),
            ),
            Container(
              decoration: AppDecoration.instance.decorationColorWhiteRadius14,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: he(10), bottom: he(10)),
                          child: Text("Ism ",
                              style: AppTextStyles.instance.styleW400S15Black),
                        ),
                        CustomTextField(
                            onChange: (v) {},
                            hintText: "Ism kiriting",
                            prefixIcon:
                                const Icon(Icons.person_outline_rounded),
                            textEditingController: ism),
                        Padding(
                          padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                          child: Text("Familiya ",
                              style: AppTextStyles.instance.styleW400S15Black),
                        ),
                        CustomTextField(
                            onChange: (v) {},
                            hintText: "Familiya kiriting",
                            textEditingController: familiya),
                        Padding(
                          padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                          child: Text("Telefon nomer",
                              style: AppTextStyles.instance.styleW400S15Black),
                        ),
                        CustomTextField(
                            onChange: (v) {},
                            hintText: "Telefon nomer kiriting",
                            keyboardType: TextInputType.number,
                            textEditingController: nomer),
                      ],
                    ),
                    SizedBox(height: he(24)),
                    LittelButton(title: 'Saqlash', onTap: () {})
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
