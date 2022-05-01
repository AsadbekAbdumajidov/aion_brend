
import 'package:aion/core/components/nav_bar.dart';
import 'package:aion/router/app_routes.dart';
import 'package:flutter/material.dart';

class RouteGenerateKit {
  Route? generateKit(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.navBar:
        return MaterialPageRoute(
          builder: (context) => const NavBar(),
        );
      
     
    }
    return null;
  }
}
