// ignore_for_file: must_be_immutable

import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
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
      this.keyboardType})
      : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value) onChange;
  final String hintText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
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
      keyboardType: keyboardType,
      cursorColor: AppColors.instance.blue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: wi(16)),
        suffixIcon: suffixIcon,
        prefixIcon:prefixIcon,
        hintStyle: AppTextStyles.instance.styleW500S13BlackWith05,
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
            color: AppColors.instance.primarColor.withOpacity(0.5),
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

class SimpleTextField extends StatelessWidget {
  SimpleTextField({
    Key? key,
    required this.onChange,
    required this.hintText,
    this.validator,
    this.textInputAction,
    this.initialValue,
    this.textEditingController,
    this.maxLenght,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final Function(String value) onChange;
  final String hintText;
  final TextInputAction? textInputAction;
  final String? initialValue; 
  final int? maxLenght;
  FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: wi(2),
      textInputAction: textInputAction,
      maxLength: maxLenght,
      cursorColor: AppColors.instance.blue,
      keyboardType: TextInputType.number,
      style: AppTextStyles.instance.styleW600S15Black,
      decoration: InputDecoration(
          hintStyle: AppTextStyles.instance.styleW400S15Blackwith05,
          hintText: hintText),
    );
  }
}

class CustomPrefixTextField extends StatelessWidget {
  CustomPrefixTextField(
      {Key? key,
      required this.textEditingController,
      required this.onChange,
      required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.obscure,
      this.textInputAction,
      this.fillColor,
      required this.textInputType,
      this.validator})
      : super(key: key);

  final TextEditingController textEditingController;
  final Function(String value) onChange;
  final String hintText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;final Color? fillColor;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: AppTextStyles.instance.styleW400S15Black
          .copyWith(fontWeight: FontWeight.w400),
      obscureText: obscure ?? false,
      textInputAction: textInputAction,
      onChanged: onChange,
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? Colors.white,
        hintStyle: AppTextStyles.instance.styleW500S13BlackWith05,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(),
        ),
        enabledBorder:  OutlineInputBorder(
          borderRadius:const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: AppColors.instance.black.withOpacity(0.2),
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius:const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color:  AppColors.instance.primarColor.withOpacity(0.5),
            
          ),
        ),
        disabledBorder:  OutlineInputBorder(
          borderRadius:const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: AppColors.instance.black),
        ),
        
      ),
    );
  }
}
