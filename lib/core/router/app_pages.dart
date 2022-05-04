import 'package:aion/core/components/nav_bar.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Routes _instance = Routes._inint();
  static Routes get instance => _instance;

  Routes._inint();

  Route? generateRoue(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.navBar:
        return simpleRoute(const NavBar());
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
