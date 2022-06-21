import 'package:aion/core/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/custom_button/custom_button.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:aion/views/sign_up/widget/phone_number_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
          title: "Aion.brend",
          leftIcon: Icons.arrow_back_ios_new_rounded,
          leftOntap: () {
            Navigator.pop(context);
          }).getBar(context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: he(20)),
                        child: Text('Hisob yaratish 👋',
                            style: AppTextStyles.instance.stylew800S20Black)),
                    Text("Ism",
                        style: AppTextStyles.instance.styleW400S15Black),
                    Padding(
                      padding: EdgeInsets.only(top: he(10), bottom: he(16)),
                      child: CustomTextField(
                        validator: ((v) =>
                            v == "" ? "Ismingizni bo'sh qoldirmang" : null),
                        hintText: "Ismingizni kiriting",
                        textEditingController: fNameController,
                        textInputAction: TextInputAction.next,
                        prefixIcon:
                            Icon(Icons.person, color: AppColors.instance.blue),
                        onChange: (String value) {},
                      ),
                    ),
                    Text("Familiya",
                        style: AppTextStyles.instance.styleW400S15Black),
                    Padding(
                      padding: EdgeInsets.only(top: he(10), bottom: he(16)),
                      child: CustomTextField(
                        validator: ((v) =>
                            v == "" ? "Ismingizni bo'sh qoldirmang" : null),
                        hintText: "Familiyangizni kiriting",
                        textEditingController: lNameController,
                        textInputAction: TextInputAction.done,
                        prefixIcon:
                            Icon(Icons.person, color: AppColors.instance.blue),
                        onChange: (String value) {},
                      ),
                    ),
                    PhoneNumberwidget(phoneController: phoneController),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CustomButton(
                  title: "Davom etish",
                  onTap: () {
                    if (formKey.currentState!.validate()) {}
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
