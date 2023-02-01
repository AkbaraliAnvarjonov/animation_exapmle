import 'package:animation/screens/car.dart';
import 'package:animation/screens/first_task.dart';
import 'package:animation/screens/fivth_task.dart';
import 'package:animation/screens/fourth_task.dart';
import 'package:animation/screens/secondTask.dart';
import 'package:animation/screens/third_task.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CarPage(),
                        ));
                  },
                  child: const Text(
                    'Car',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FirstWidget(),
                        ));
                  },
                  child: const Text(
                    'First',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyWidget(),
                        ));
                  },
                  child: const Text(
                    'Second',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ThirdWidget(),
                        ));
                  },
                  child: const Text(
                    'Third',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FourthtWidget(),
                        ));
                  },
                  child: const Text(
                    'Four',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FivthWidget(),
                        ));
                  },
                  child: const Text(
                    'Five',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
