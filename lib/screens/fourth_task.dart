import 'dart:math';
import 'package:flutter/material.dart';

class FourthtWidget extends StatefulWidget {
  const FourthtWidget({super.key});

  @override
  State<FourthtWidget> createState() => _FourthtWidgetState();
}

class _FourthtWidgetState extends State<FourthtWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animationController.addListener(() {
      setState(() {});
    });
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
        reverseCurve: Curves.linear)
      ..addListener(() {
        setState(() {});
      }));
    super.initState();

    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Transform.rotate(
        angle: animation.value,
        child: Container(
          height: 90,
          width: 90,
          color: Colors.blue,
        ),
      ),
    ));
  }
}
