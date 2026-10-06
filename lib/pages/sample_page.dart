import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  final List<Map<String, dynamic>> students = const [
    {'name': 'John Doe', 'course': 'BSCS', 'age': '21'},
    {'name': 'Cyrel Genosas', 'course': 'BSIT', 'age': '20'},
    {'name': 'Michael Johnson', 'course': 'BSCS', 'age': '19'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Students'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.school),
              title: Text(student['name']),
              subtitle: Text('${student['course']} • Age ${student['age']}'),
            ),
          );
        },
      ),
    );
  }
}
