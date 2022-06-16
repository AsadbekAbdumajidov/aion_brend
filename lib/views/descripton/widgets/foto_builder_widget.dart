import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FotoBuilderWidget extends StatefulWidget {
  const FotoBuilderWidget(
      {Key? key, required this.imgList, required this.selectedIndex})
      : super(key: key);
  final List imgList;
  final int selectedIndex;

  @override
  State<FotoBuilderWidget> createState() => _FotoBuilderWidgetState();
}

class _FotoBuilderWidgetState extends State<FotoBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: he(70),
      child: ListView.builder(
          itemCount: widget.imgList.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(vertical: he(10)),
          itemBuilder: (_, __) {
            return Padding(
              padding: EdgeInsets.only(right: wi(14)),
              child: InkWell(
                onTap: (() {}),
                child: Container(
                  height: he(49),
                  width: wi(60),
                  decoration: BoxDecoration(
                      border: widget.selectedIndex == __
                          ? Border.all(
                              width: wi(2),
                              color: AppColors.instance.primarColor)
                          : const Border(),
                      color: AppColors.instance.white,
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: CachedNetworkImage(
                      imageUrl: widget.imgList[__],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
