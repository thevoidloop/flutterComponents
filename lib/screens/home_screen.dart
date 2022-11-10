import 'package:flutter/material.dart';

import 'package:fluttercomponents/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(AppRoutes.menuOption[index].name),
                  leading: Icon(
                    AppRoutes.menuOption[index].icon,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.menuOption[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOption.length));
  }
}
