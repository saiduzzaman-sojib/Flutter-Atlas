import 'package:flutter/material.dart';
import 'package:practice/portfolio.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home:Portfolio(),
    );
  }
}