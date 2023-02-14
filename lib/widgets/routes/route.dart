import 'package:budget/view/%20authentication/welcome.dart';
import 'package:budget/view/master/master_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenratesRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/MasterPage":
        return MaterialPageRoute(builder: (context) => const MasterPage());

      case "/WelcomPage":
        return MaterialPageRoute(builder: (context) => const WelcomePage());
    }
    return null;
  }
}
