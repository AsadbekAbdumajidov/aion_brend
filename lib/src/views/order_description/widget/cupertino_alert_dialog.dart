import 'package:aion/core/utils/size_konfig.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CupertinoShowDialog {
  static void showDialog({
    context,
    Function()? onTap,
  }) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return Theme(
          data: ThemeData(scaffoldBackgroundColor: Colors.white),
          child: Stack(
            children: [
              Positioned(
                bottom: he(200),
                top: he(200),
                left: wi(20),
                right: wi(20),
                child: FadeInUp(
                  child: CupertinoAlertDialog(
                    title:const Text("To’lovingiz amalga oshirildi haridingiz uchun raxmat !"),
                    content: SvgPicture.asset("assets/svg/ic_saccess.svg"),
                    actions: [
                      CupertinoDialogAction(
                          child: const Text("Ok"),
                          onPressed: () {
                            Navigator.of(context).pop();
                            
                          }),
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
