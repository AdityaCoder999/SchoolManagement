import 'package:flutter/material.dart';
import 'package:school_management_app/screens/assignment.dart';
import 'package:school_management_app/screens/attendance.dart';
import 'package:school_management_app/screens/holiday.dart';
import 'package:http/http.dart' as http;
import 'package:school_management_app/screens/login_screen.dart';
import 'package:school_management_app/screens/profile.dart';
import 'package:school_management_app/screens/timetable.dart';
import 'package:school_management_app/screens/welcome_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(),
        body: Column(
          children: [
            UpperDashboard(context),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return Attendance_Screen();
                    }));
                  },
                  
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.assignment, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Attendance', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(300, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return ProfileScreen();
                    }));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.perm_identity_outlined, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Profile', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return TimeTable();
                    }));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.calendar_month_outlined, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Time Table', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
                InkWell(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return HolidayScreen();
                    }));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.home_sharp, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Holidays', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return Assignment();
                    }));
                  },
                  
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.assignment, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Assignment', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(560, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
                InkWell(
                   onTap: () {
                    Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return WelcomeScreen();
      }));
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Icon(Icons.logout, size: 30, color: Colors.blue,),
                          SizedBox(height: 5),
                          Text('Log Out', style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                          ),)
                        ],
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(50, 50, 50, 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [BoxShadow(blurRadius: 6)]
                    ),
                  ),
                ),
                
              ],
            )
          ],
        ));
  }

  Container UpperDashboard(BuildContext context) {
    return Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            width: MediaQuery.of(context).size.width,
            height: 225,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [BoxShadow(blurRadius: 5)]                  
              ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('profile.jpg'),
                    radius: 65,
                  ),
                  Text('Hi Aditya!', style: TextStyle(color: Colors.grey[800], fontSize: 25),),
                  const Text('Class IX | Roll No. 945', style: TextStyle( color: Colors.grey, fontSize: 15),),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          );
  }
}
