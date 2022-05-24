// ignore_for_file: must_be_immutable

import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.onChange,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.obscure,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.textEditingController,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value) onChange;
  final String hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      initialValue: initialValue,
      style: AppTextStyles.instance.styleW400S15Black,
      obscureText: obscure ?? false,
      textInputAction: textInputAction,
      onChanged: onChange,
      controller: textEditingController,
      cursorColor: AppColors.instance.blue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: wi(16)),
        suffixIcon: suffixIcon,
        prefixIcon:const Icon(Icons.edit_outlined),
        hintStyle: AppTextStyles.instance.styleW400S15BlackOpacity04,
        hintText: hintText,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: AppColors.instance.black.withOpacity(0.2),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: AppColors.instance.blue.withOpacity(0.7),
            width: 1.2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: AppColors.instance.black),
        ),
      ),
    );
  }
}
