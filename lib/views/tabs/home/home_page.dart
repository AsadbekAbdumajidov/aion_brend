import 'package:aion/core/components/carusel_slider.dart';
import 'package:aion/core/constants/app_icons.dart';
import 'package:aion/core/utils/size_konfig.dart';
import 'package:aion/views/tabs/home/widgets/cupertino_tab_bar.dart';
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
          padding:  EdgeInsets.only(top: he(10)),
          child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                AppIcons.instance.icSearchField,
                height: he(50),
              )),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: wi(16)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: he(12)),
              child: const CupertinoTapBar(),
            ),
            const Carusel()
          ],
        ),
      ),
    );
  }
}
