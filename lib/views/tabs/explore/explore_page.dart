import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Ichki kategoriya",
            style: AppTextStyles.instance.styleW400S17Black),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}