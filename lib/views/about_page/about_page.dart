import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/service/url_service.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Biz haqimizda",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
     
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(20)),
              child: Text("Aion Brend",
                  style: AppTextStyles.instance.styleW500S18Black),
            ),
            Text(
                "matbaa va matn terish sanoatining oddiygina soxta matnidir. Lorem Ipsum 1500-yillardan beri sanoatning standart qo'g'irchoq matni bo'lib kelgan, o'shandan beri noma'lum printer galleyni olib, kitob namunalarini yaratish uchun shifrlagan. U nafaqat besh asr davomida, balki elektron terishga sakrashdan",
                style: AppTextStyles.instance.styleW400S15BlackHeight15),
            SizedBox(height: he(27)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dizayner grupa",
                    style: AppTextStyles.instance.styleW500S13Black),
                Text("Sages group ",
                    style: AppTextStyles.instance.stylew600S14Primary)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Flutter App",
                    style: AppTextStyles.instance.styleW500S13Black),
                TextButton(
                    onPressed: () {
                      ServiceUrl().urlService("");
                    },
                    child: Text("Abdumajidov Asadbek",
                        style: AppTextStyles.instance.styleW600S15Black)),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
