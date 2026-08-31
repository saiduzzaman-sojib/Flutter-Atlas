import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'student_provider.dart';
import 'summary_screen.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Attendance'),
        centerTitle: true,
      ),
      body: Consumer<StudentProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.students.length,
            itemBuilder: (context, index) {
              final student = provider.students[index];
              return CheckboxListTile(
                title: Text(student.name),
                value: student.isPresent,
                onChanged: (bool? value) {
                  provider.toggleAttendance(index);
                },
                activeColor: Colors.green,
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SummaryScreen(),
              ),
            );
          },
          child: const Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}