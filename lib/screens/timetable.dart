import 'package:flutter/material.dart';

class TimeTable extends StatelessWidget {
  const TimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Text('1st Period | Physics - Nidhi Mam | Duration 40 min', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Text('2nd Period | SST - Arti Mam | Duration 40 min', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Text('3rd Period | Hindi - Kajal Mam | Duration 40 min', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Text('4th Period | English - Divya Mam | Duration 40 min', style: TextStyle(fontSize: 14),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Text('5th Period | Biology - Mahesh Sir | Duration 40 min', style: TextStyle(fontSize: 14),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}