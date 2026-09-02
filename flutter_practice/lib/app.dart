import 'package:flutter/material.dart';
import 'package:flutter_practice/module_10/class_1.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      home: Module10Class1(
      ),
    );
  }
}