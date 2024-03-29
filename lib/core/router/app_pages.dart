import 'package:aion/src/components/nav_bar.dart';
import 'package:aion/core/router/app_routes.dart';
import 'package:aion/src/views/about_page/about_page.dart';
import 'package:aion/src/views/card_edit/cards_edit.dart';
import 'package:aion/src/views/cards/cards_page.dart';
import 'package:aion/src/views/connection_page/connection_page.dart';
import 'package:aion/src/views/descripton/descripton_page.dart';
import 'package:aion/src/views/dostavka_page/location.dart';
import 'package:aion/src/views/dostavka_page/location_add.dart';
import 'package:aion/src/views/notification/notification.dart';
import 'package:aion/src/views/order_description/order_desciption_page.dart';
import 'package:aion/src/views/orders/orders_page.dart';
import 'package:aion/src/views/search/search_page.dart';
import 'package:aion/src/views/setting_page/setting_page.dart';
import 'package:aion/src/views/sign_in/sign_in.dart';
import 'package:aion/src/views/sign_up/sign_up.dart';
import 'package:aion/src/views/subcategory/subcategory.dart';
import 'package:aion/src/views/verify/verify.dart';
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
      case AppRoutes.connection:
        return simpleRoute(const Connection());
      case AppRoutes.about:
        return simpleRoute(const AboutPage());
      case AppRoutes.setting:
        return simpleRoute(const SettingPage());
      case AppRoutes.order:
        return simpleRoute(const OrdersPage());
      case AppRoutes.cardAdd:
        return simpleRoute(const Cards());
      case AppRoutes.search:
        return simpleRoute(SearchPage());
      case AppRoutes.subcategory:
        return simpleRoute(const Subcategory());
      case AppRoutes.orderDescription:
        return simpleRoute(const OrderDescription());
      case AppRoutes.cardEdit:
        return simpleRoute(const CardEdit());
      case AppRoutes.signUp:
        return simpleRoute(const SignUpPage());
      case AppRoutes.signIn:
        return simpleRoute(const SigninPage());
      case AppRoutes.verify:
        return simpleRoute(LoginVerifyPage());
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
