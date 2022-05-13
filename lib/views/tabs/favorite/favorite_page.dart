import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Men yoqtirgan",
            style: AppTextStyles.instance.styleW400S17Black),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
