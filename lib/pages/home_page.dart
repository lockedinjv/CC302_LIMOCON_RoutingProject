import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> students = const [
    {'name': 'John Doe', 'course': 'BSCS', 'age': '21'},
    {'name': 'Cyrel Genosas', 'course': 'BSIT', 'age': '20'},
    {'name': 'Michael Johnson', 'course': 'BSCS', 'age': '19'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Directory'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.person)),
              title: Text(
                student['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${student['course']} • Age ${student['age']}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.detail,
                  arguments: student,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
