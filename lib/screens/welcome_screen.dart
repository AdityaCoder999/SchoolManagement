import 'package:flutter/material.dart';
import 'package:school_management_app/screens/login_screen.dart';
import 'package:school_management_app/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 40,
              decoration: TextDecoration.none,
              letterSpacing: 1.6,
            ),
          ),
          const Text(
            'This is school management app which will help you taking eduction efficiently.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              decoration: TextDecoration.none,
              letterSpacing: 1.6,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset('welcome.png', alignment: Alignment.bottomCenter),
          const SizedBox(
            height: 30,
          ),
          btn1(context),
          const SizedBox(
            height: 20,
          ),
          btn2(context)
        ],
      ),
    ));
  }

  Container btn1(BuildContext context) {
    return Container(
      height: 50,
      width: 280,
      // ignore: sort_child_properties_last
      child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return Login_screen();
            }));
          },
          child: const Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 16, letterSpacing: 1.2),
          )),
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }

  btn2(BuildContext context) {
    return Container(
      height: 50,
      width: 280,
      // ignore: sort_child_properties_last
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return Signup_Screen();
            }));
          },
          child: const Text(
            'Signup',
            style:
                TextStyle(color: Colors.blue, fontSize: 16, letterSpacing: 1.2),
          )),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue)),
    );
  }
}
