import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'student_provider.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StudentProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Summary'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard('Present', provider.presentCount, Colors.green),
                _buildStatCard('Absent', provider.absentCount, Colors.grey),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                    children: [
                      const Text('Present Students:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(provider.presentStudents.map((s) => s.name).join(', ')),
                      const SizedBox(height: 20),
                      const Text('Absent Students:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(provider.absentStudents.map((s) => s.name).join(', ')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, int count, Color color) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color, width: 8),
          ),
          child: Center(
            child: Text(
              '$count/10',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}