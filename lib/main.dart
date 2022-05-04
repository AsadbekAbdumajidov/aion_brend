import 'package:aion/core/constants/app_theme.dart';
import 'package:aion/core/router/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aion.brend',
      theme: appThemeData,
      onGenerateRoute: Routes.instance.generateRoue,
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
        Locale('fr'),
      ],
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      initialRoute: "/navBar",
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}
