import 'package:aion/core/constants/app_style.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Meni Kabinetim", style: AppTextStyles.instance.styleW400S17Black),
        
      ),
      body: Column(
        children: [],
      ),
    );
  }
}