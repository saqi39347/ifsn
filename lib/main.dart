import 'package:flutter/material.dart';
import 'package:ifsn/view/auth/selection_screen.dart';
import 'package:ifsn/view/student_pannel/student_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:
       StudentDashboard(),
      //   SelectionScreen(),
    );
  }
}
