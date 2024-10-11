import 'package:flutter/material.dart';
import '../logo_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    logoScreen: (context) => LogoScreen(),
    initialRoute: (context) => LogoScreen()
  };
}
