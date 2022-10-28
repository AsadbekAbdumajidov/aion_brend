import 'package:aion/src/components/app_bar.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/custom_button/custom_button.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

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
                        child: Text('Hisobga kirish 👋',
                            style: AppTextStyles.instance.stylew800S20Black)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Telefon raqam",
                            style: AppTextStyles.instance.styleW400S15Black),
                        Padding(
                          padding: EdgeInsets.only(top: he(10), bottom: he(16)),
                          child: CustomPrefixTextField(
                            validator: (v) {
                              if (v!.isEmpty) {
                                return "Raqamingizni bo'sh qoldirmang";
                              }
                              return null;
                            },
                            hintText: "Telefon raqamingizni kiriting",
                            fillColor: AppColors.instance.white,
                            textEditingController: phoneController,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            onChange: (String value) {},
                            prefixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CountryCodePicker(
                                  onChanged: (code) {},
                                  initialSelection: 'Uz',
                                  favorite: const ['+998', "Uz"],
                                  showFlag: false,
                                  onInit: (code) {},
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: wi(6)),
                                  child: Container(
                                      height: he(21),
                                      width: wi(1),
                                      color: AppColors.instance.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CustomButton(
                  title: "Davom etish",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, AppRoutes.verify,
                          arguments: phoneController.text);
                    }
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
