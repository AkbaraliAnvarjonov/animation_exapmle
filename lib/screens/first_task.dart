import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  const FirstWidget({super.key});

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  bool isOrange = true;
  Color color = Colors.orange;
  String isFirst = "First";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.linear,
              height: 200,
              width: 200,
              color: color,
              child: Center(
                  child: AnimatedDefaultTextStyle(
                curve: Curves.linear,
                duration: const Duration(seconds: 3),
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
                child: Text("This is $isFirst Widget"),
              )),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  isOrange = !isOrange;
                  color = isOrange ? Colors.orange : Colors.green;
                  isFirst = isOrange ? "First" : "Second";
                  setState(() {});
                },
                child: const Text("Click"))
          ],
        ),
      ),
    );
  }
}
