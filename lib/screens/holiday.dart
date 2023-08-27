import 'package:flutter/material.dart';

class HolidayScreen extends StatelessWidget {
  const HolidayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Center(
                child: Text('6th April | Tuesday | Hanuman Jayanti', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Center(
                child: Text('7th April | Friday | Good Friday', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Center(
                child: Text('14th April | Friday | Ambedkar Jayanti', style: TextStyle(fontSize: 14),),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}