import 'package:flutter/material.dart';
import 'package:responsive_app/home_screen.dart';
import 'package:responsive_app/orientation_screen.dart';
import 'package:responsive_app/orientation_screen2.dart';
import 'package:responsive_app/orientation_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GridViewOrientationWay(),
    );
  }
}
