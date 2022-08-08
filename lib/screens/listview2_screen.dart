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
          title: const Text('ListView Tipo 2'),
          elevation: 0,
          backgroundColor: Colors.indigo,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(option[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.indigo,
                  ),
                  onTap: () {
                    final game = option[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: option.length));
  }
}
