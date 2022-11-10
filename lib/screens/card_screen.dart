import 'package:flutter/material.dart';
import 'package:fluttercomponents/widget/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
          CustomCardType1(),
        ],
      ),
    );
  }
}
