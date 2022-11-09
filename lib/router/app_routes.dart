import 'package:flutter/material.dart';

import 'package:fluttercomponents/models/models.dart';
import 'package:fluttercomponents/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        widget: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'listView1',
        name: 'List View Tipo 1',
        widget: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listView2',
        name: 'List View Tipo 2',
        widget: const Listview2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alertas ',
        widget: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        widget: const CardScreen(),
        icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (context) => option.widget});
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listView1': (context) => const Listview1Screen(),
    'listView2': (context) => const Listview2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen()
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
