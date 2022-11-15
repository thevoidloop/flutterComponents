import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://picsum.photos/500/300?image=${index + 1}'),
          );
        },
      ),
    );
  }
}
