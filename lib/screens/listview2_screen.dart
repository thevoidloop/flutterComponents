import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final option = const [
    'megaman',
    'metal gear',
    'super smash',
    'final fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListView Tipo 2',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    option[index],
                    style: const TextStyle(fontSize: 18),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: option.length));
  }
}
