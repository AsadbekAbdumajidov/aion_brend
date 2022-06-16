import 'package:aion/core/constants/app_decoration.dart';
import 'package:aion/core/extension/for_context.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FotoBuilderWidget extends StatelessWidget {
  const FotoBuilderWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: he(70),
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
                  height: he(49),
                  width: wi(60),
                  decoration:
                      AppDecoration.instance.decorationBorderPrimaryRadius6,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    child: CachedNetworkImage(
                      imageUrl: "https://source.unsplash.com/random/$__",
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
