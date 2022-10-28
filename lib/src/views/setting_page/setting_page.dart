import 'dart:io';

import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/little_button/ilitten_button.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

final ImagePicker _picker = ImagePicker();
File picture = File("");

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController ism = TextEditingController();
    TextEditingController familiya = TextEditingController();
    TextEditingController nomer = TextEditingController();

    return Scaffold(
      appBar: HomeAppBar(
          title: "Sozlamalar",
          leftIcon: Icons.arrow_back_ios_new_rounded,
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
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: CachedNetworkImage(
                          height: he(85),
                          width: he(85),
                          imageUrl:
                              "https://i2.cdn.turner.com/cnnnext/dam/assets/140926165711-john-sutter-profile-image-large-169.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          decoration: AppDecoration.instance
                              .decorationColorBlackWith03BorderRadiusBottom100,
                          height: he(40),
                          width: wi(90),
                          child: GestureDetector(
                            onTap: () {
                              imageGaleryAddFireStore();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                  "assets/svg/ic_editFoto.svg"),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                            prefixIcon:
                                const Icon(Icons.person_outline_rounded),
                            textEditingController: familiya),
                        Padding(
                          padding: EdgeInsets.only(top: he(16), bottom: he(10)),
                          child: Text("Telefon nomer",
                              style: AppTextStyles.instance.styleW400S15Black),
                        ),
                        CustomTextField(
                            onChange: (v) {},
                            hintText: "Telefon nomer kiriting",
                            prefixIcon: const Icon(Icons.phone),
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

  imageGaleryAddFireStore() async {
    await _picker.pickImage(source: ImageSource.gallery).then((value) {
      setState(() {
        picture = File(value!.path);
      });
      return null;
    });
  }
}
