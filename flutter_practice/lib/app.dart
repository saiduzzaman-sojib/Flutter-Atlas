import 'package:flutter/material.dart';
import 'package:flutter_practice/module_10/class_3.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.grey,
        primarySwatch: Colors.lime,
        scaffoldBackgroundColor: Colors.deepOrange.shade50,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      home: Module10Class3(
      ),
    );
  }
}