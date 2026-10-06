import 'package:flutter/material.dart';

import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Map<String, dynamic>> students = const [
    {'name': 'John Viel', 'course': 'BSCS', 'age': '21'},
    {'name': 'JV ', 'course': 'BSIT', 'age': '20'},
    {'name': 'Ampong', 'course': 'BSCS', 'age': '19'},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Directory',
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
