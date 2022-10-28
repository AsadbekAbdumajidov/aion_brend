import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class LoginVerifyPage extends StatelessWidget {
  LoginVerifyPage({Key? key}) : super(key: key);
  final textController = TextEditingController();
  final focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final phone = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: AppColors.instance.white,
      appBar: HomeAppBar(
          title: "Tasdiqlash kodi",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: ListView(
          padding:  EdgeInsets.symmetric(horizontal: wi(20)),
          children: [
            Padding(
                padding: EdgeInsets.only(top: he(40)),
                child: Text('Tasdiqlash kodi yuborildi 👋',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.instance.stylew800S20Black)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(10)),
              child: Text(
                "Telefon raqamingizga yuborilgan \nkodingizni kiriting",
                textAlign: TextAlign.center,
                style: AppTextStyles.instance.styleW400S14Blackwith05,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: he(32)),
              child: Text('$phone',
                textAlign: TextAlign.center,
                  style: AppTextStyles.instance.styleW400S15Black
                      .copyWith(color: AppColors.instance.black)),
            ),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              textInputAction: TextInputAction.next,
              focusNode: focusNode,
              autofocus: true,
              controller: textController,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              onChanged: (code) {},
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              onCompleted: (pin) => debugPrint(pin),
            ),
            Padding(
              padding: EdgeInsets.only(top: he(32), bottom: he(24)),
              child: CustomButton(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  title: "Tasdiqlash"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kodni olmagan bo'lsangiz",
                  style: AppTextStyles.instance.styleW500S14Black
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    textController.text = '';
                    focusNode.unfocus();
                  },
                  child: Text(
                    "qayta yuborish",
                    style: AppTextStyles.instance.stylew600S14Primary
                        .copyWith(color: AppColors.instance.primarColor),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  final defaultPinTheme = PinTheme(
    width: wi(56),
    height: he(56),
    textStyle:  TextStyle(
        fontSize: he(20),
        color: const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final focusedPinTheme = PinTheme(
    width: wi(56),
    height:  he(56),
    textStyle:  TextStyle(
        fontSize:he(20),
        color: const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.instance.primarColor),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  final submittedPinTheme = PinTheme(
    width:wi(56),
    height: he(56),
    textStyle:  TextStyle(
        fontSize:he(20),
        color:const Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.instance.primarColor),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
