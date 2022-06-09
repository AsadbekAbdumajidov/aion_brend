import 'package:flutter/material.dart';

class TabBarItemContainer extends StatelessWidget {
  const TabBarItemContainer({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
      ),
    );
  }
}
