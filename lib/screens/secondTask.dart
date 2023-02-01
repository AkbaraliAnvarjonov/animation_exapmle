import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double right = 160;
  double top = 160;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              AnimatedPositioned(
                right: right,
                top: top,
                duration: const Duration(seconds: 1),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                bottom: 100,
                left: 120,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          top -= 40;
                        });
                      },
                      icon: const Icon(Icons.arrow_upward_outlined),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              right += 40;
                            });
                          },
                          icon: const Icon(Icons.arrow_back),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              right = 160;
                              top = 160;
                            });
                          },
                          icon: const Icon(Icons.circle),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              right -= 40;
                            });
                          },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          top += 40;
                        });
                      },
                      icon: const Icon(Icons.arrow_downward_sharp),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
