import 'package:flutter/material.dart';
import 'dart:math' as math;

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key});

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  double height = 160;
  double width = 160;
  double borderRadius = 20;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0);
          width = math.Random().nextInt(200).toDouble();
          height = math.Random().nextInt(200).toDouble();
          borderRadius = math.Random().nextInt(60).toDouble();
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
