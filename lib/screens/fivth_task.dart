import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FivthWidget extends StatefulWidget {
  const FivthWidget({super.key});

  @override
  State<FivthWidget> createState() => _FivthWidgetState();
}

class _FivthWidgetState extends State<FivthWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation borderRadius;
  late Animation color;
  late Animation borderColor;
  late Animation borderSize;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )
      ..addListener(() {
        setState(() {});
      })
      ..repeat(reverse: true);
    color = ColorTween(begin: Colors.yellow, end: Colors.blue)
        .animate(animationController);
    borderColor = ColorTween(begin: Colors.black, end: Colors.red)
        .animate(animationController);
    borderRadius =
        Tween<double>(begin: 0, end: 100).animate(animationController);

    borderSize = Tween<double>(begin: 0, end: 20).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: color.value,
            border: Border.all(
              color: borderColor.value,
              width: borderSize.value,
            ),
            borderRadius: BorderRadius.circular(borderRadius.value),
          ),
        ),
      ),
    ));
  }
}
