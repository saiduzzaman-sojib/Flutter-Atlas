import 'package:flutter/material.dart';

class Student {
  String name;
  bool isPresent;

  Student({required this.name, this.isPresent = false});
}

class StudentProvider extends ChangeNotifier {
  final List<Student> _students = List.generate(
    10,
    (index) => Student(name: 'Student ${index + 1}'),
  );

  List<Student> get students => _students;

  int get presentCount => _students.where((s) => s.isPresent).length;
  
  int get absentCount => _students.length - presentCount;

  List<Student> get presentStudents => _students.where((s) => s.isPresent).toList();

  List<Student> get absentStudents => _students.where((s) => !s.isPresent).toList();

  void toggleAttendance(int index) {
    _students[index].isPresent = !_students[index].isPresent;
    notifyListeners();
  }
}