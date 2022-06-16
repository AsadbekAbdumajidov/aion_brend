import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class SizeBuilderWidget extends StatelessWidget {
  const SizeBuilderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: he(55),
      child: ListView.builder(
          itemCount: 4,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: he(10)),
          itemBuilder: (_, __) {
            return Padding(
              padding: EdgeInsets.only(right: wi(14)),
              child: InkWell(
                onTap: (() {}),
                child: Container(
                  height: he(25),
                  width: wi(40),
                  decoration:
                      AppDecoration.instance.decorationBorderPrimaryRadius6,
                  child: Center(
                      child: Text("M",
                          style: AppTextStyles.instance.styleW500S18Black)),
                ),
              ),
            );
          }),
    );
  }
}
