import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/core/widgets/text_form_field/text_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneNumberwidget extends StatelessWidget {
  const PhoneNumberwidget({Key? key, required this.phoneController})
      : super(key: key);
  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Telefon raqam",
              style: AppTextStyles.instance.styleW400S15Black),
        Padding(
          padding:  EdgeInsets.only(top: he(10),bottom: he(16)),
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
                  padding:  EdgeInsets.symmetric(horizontal: wi(6)),
                  child: Container(height: he(21), width: wi(1), color: AppColors.instance.grey),
                ),
              ],
            ),
            
            
          ),
        ),
      ],
    );
  }
}
