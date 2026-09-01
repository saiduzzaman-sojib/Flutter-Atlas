import 'package:flutter/material.dart';
import 'package:flutter_practice/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      home: Home(),
    );
  }
}