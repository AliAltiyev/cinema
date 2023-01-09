import 'package:cinema/navigation/green_page.dart';
import 'package:cinema/navigation/red_page.dart';
import 'package:cinema/navigation/yellow_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> routePlatformChecker(Widget page,RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(builder: (context) => page,settings: settings);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(builder: (context) => page,settings: settings);
    } else {
      return CupertinoPageRoute(builder: (context) => page,settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return routePlatformChecker(const YellowPage(),settings);
      case "/GreenPage":
        return routePlatformChecker(const GreenPage(),settings);
      case "/RedPage":
        return routePlatformChecker(RedPage(),settings);
      default:
        return MaterialPageRoute(
            builder: (unknown) => const Scaffold(
                  body: Center(
                    child: Text("404"),
                  ),
                ));
        ;
    }
  }
}
