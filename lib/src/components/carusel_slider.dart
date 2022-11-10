import 'package:aion/core/constants/app_colors.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slide_countdown/slide_countdown.dart';

class Carusel extends StatefulWidget {
  final String? region;
  const Carusel({Key? key, this.region}) : super(key: key);

  @override
  _CaruselState createState() => _CaruselState();
}

const defaultDuration = Duration(days: 1, hours: 15, minutes: 30);

class _CaruselState extends State<Carusel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: 9,
        itemBuilder: (_, __, pagev) {
          return Stack(
            children: [
              Container(
                height: he(171),
                width: MediaQuery.of(context).size.width *1,
                decoration: BoxDecoration(
                  color: AppColors.instance.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: wi(16), right: wi(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Stefano Ricci \nFutbolkalari",
                              style: AppTextStyles.instance.stylew800S20Black),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: he(14)),
                            child: Text("90 000 so'm",
                                style:
                                    AppTextStyles.instance.stylew800S17Primary),
                          ),
                          Row(
                            children: [
                              SlideCountdownSeparated(
                                decoration: BoxDecoration(
                                    color: AppColors.instance.primarColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))),
                                duration: defaultDuration,
                              ),
                              SizedBox(width: wi(8)),
                              Text("qoldi",
                                  style:
                                      AppTextStyles.instance.styleW600S14Black)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: he(151),
                        width: wi(120),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://pngimg.com/uploads/tshirt/small/tshirt_PNG5428.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: he(-4),
                  right: wi(-4),
                  child: SvgPicture.asset(
                    "assets/svg/ic_sale_logo.svg",
                    height: he(70),
                    width: wi(70),
                  ))
            ],
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: he(171),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 30),
        ),
      ),
    );
  }
}
