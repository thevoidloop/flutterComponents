import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final option = const [
    'megaman',
    'metal gear',
    'super smash',
    'final fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [
          ...option
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
