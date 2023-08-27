import 'package:flutter/material.dart';
import 'package:school_management_app/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SCHOOL_MANAGAEMENT',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen()
    );
}
}