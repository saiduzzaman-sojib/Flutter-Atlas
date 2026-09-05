import 'package:flutter/material.dart';
import 'package:flutter_practice/module_11/class_1.dart';


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

       elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          )
        )
       ),

       inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.cyan,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
       ),

       appBarTheme: AppBarTheme(
        backgroundColor: Colors.amber,
        centerTitle: true,
       )


      ),


      debugShowCheckedModeBanner: false,
      title: 'Practice App',
      home: Module11Class1(
      ),
    );
  }
}