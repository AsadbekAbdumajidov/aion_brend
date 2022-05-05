import 'package:aion/base/base_view.dart';
import 'package:aion/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewModal: Home,
        onPageBuilder: (context, widget) {
          return scaffold();
        });
  }

  Scaffold scaffold() {
    return Scaffold(
      backgroundColor: AppColors.instance.backGround,
      body: Column(
        children: [],
      ),
    );
  }
}
