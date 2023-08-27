import 'package:flutter/material.dart';

class Attendance_Screen extends StatelessWidget {
  const Attendance_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'YOUR ATTENDANCE IS 90.2%',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}