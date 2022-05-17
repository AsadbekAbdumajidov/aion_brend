import 'package:aion/core/constants/app_style.dart';
import 'package:aion/service/url_service.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String url;
  final String title;
  const TextButtonWidget({Key? key,required this.title,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          ServiceUrl().urlService(url);
        },
        child:
            Text(title, style: AppTextStyles.instance.styleW400S15Black));
  }
}
