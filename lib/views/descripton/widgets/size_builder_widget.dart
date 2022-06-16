import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:flutter/material.dart';

class SizeBuilderWidget extends StatefulWidget {
  const SizeBuilderWidget({Key? key}) : super(key: key);

  @override
  State<SizeBuilderWidget> createState() => _SizeBuilderWidgetState();
}

int selectedIndex = 0;

class _SizeBuilderWidgetState extends State<SizeBuilderWidget> {
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
                onTap: (() {
                  setState(() {
                    selectedIndex = __;
                  });
                }),
                child: Container(
                  height: he(25),
                  width: wi(40),
                  decoration: BoxDecoration(
                      border: selectedIndex == __
                          ? Border.all(
                              width: wi(2),
                              color: AppColors.instance.primarColor)
                          : const Border(),
                      color: AppColors.instance.white,
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
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
