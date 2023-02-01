import 'package:animation/screens/car.dart';
import 'package:animation/screens/first_task.dart';
import 'package:animation/screens/fivth_task.dart';
import 'package:animation/screens/fourth_task.dart';
import 'package:animation/screens/home_page.dart';
import 'package:animation/screens/secondTask.dart';
import 'package:animation/screens/third_task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
