import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                child: Text('Registration No.: JDF-ASDF-2021 ', style: TextStyle(fontSize: 14),),
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
                child: Text('Email: adityak2663@gmail.com', style: TextStyle(fontSize: 14),),
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
                child: Text('Admission Class: VII', style: TextStyle(fontSize: 14),),
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
                child: Text('Admission No.: 00125', style: TextStyle(fontSize: 14),),
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
                child: Text('Name: Aditya Kumar', style: TextStyle(fontSize: 14),),
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}