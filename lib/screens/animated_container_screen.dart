import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(20);

  void changeShape() {
    setState(() {
      width = Random().nextInt(400).toDouble() + 70;
      height = Random().nextInt(400).toDouble() + 70;
      color = Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255), 1);
      borderRadius =
          BorderRadius.circular(Random().nextInt(100).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(
          Icons.play_arrow_outlined,
          size: 35,
        ),
      ),
      appBar: AppBar(
        title: const Text('Animated Container Screen'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: color,
          ),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
        ),
      ),
    );
  }
}
