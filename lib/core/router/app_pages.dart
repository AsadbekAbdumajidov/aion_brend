import 'package:aion/core/components/nav_bar.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/views/descripton/descripton_page.dart';
import 'package:aion/views/dostavka_page/location.dart';
import 'package:aion/views/dostavka_page/location_add.dart';
import 'package:aion/views/notification/notification.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Routes _instance = Routes._inint();
  static Routes get instance => _instance;

  Routes._inint();

  Route? generateRoue(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.navBar:
        return simpleRoute(const NavBar());
      case AppRoutes.descripton:
        return simpleRoute(const DescriptonPage());
      case AppRoutes.location:
        return simpleRoute(const Location());
      case AppRoutes.locationAdd:
        return simpleRoute(const LocationAdd());
        case AppRoutes.notif:
        return simpleRoute(const NotificationPage());
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
