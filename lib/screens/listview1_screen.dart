import 'package:flutter/material.dart';

class listview1Screen extends StatelessWidget {
  const listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: const [
          Text('Hola Mundo'),
          Text('Hola Mundo'),
          Text('Hola Mundo'),
        ],
      ),
    );
  }
}
