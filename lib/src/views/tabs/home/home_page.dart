import 'package:aion/src/components/carusel_slider.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/constants/app_style.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/src/views/tabs/home/widgets/cupertino_tab_bar.dart';
import 'package:aion/src/views/tabs/home/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: he(10)),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.search);
              },
              child: SvgPicture.asset(
                AppIcons.instance.icSearchField,
                height: he(50),
              )),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: wi(16)),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(12)),
              child: const CupertinoTapBar(),
            ),
            const Carusel(),
            SizedBox(height: he(20)),
            Text("Barchasi", style: AppTextStyles.instance.styleW600S15Black),
            GridView.builder(
              padding: EdgeInsets.symmetric(vertical: he(10)),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 15,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: he(244),
                crossAxisSpacing: he(5),
                mainAxisSpacing: he(5),
                crossAxisCount: 2,
              ),
              itemBuilder: (_, __) => const ProductItem()),
          ],
        ),
      ),
    );
  }

 
}
