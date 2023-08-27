import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_management_app/screens/dashboard.dart';
import 'package:school_management_app/screens/signup_screen.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  var error = false;
  var text = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.blueAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 800,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 20)]),
          child: Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Image.asset('background.png'),
              LoginCard(context)
            ],
          ),
        )),
      ),
    );
  }

  Column LoginCard(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Hi Students',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Login to continue',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 35),
        Container(
          height: 40,
          width: 350,
          child: TextField(
            controller: _user,
            decoration: InputDecoration(
              labelText: 'UBI Code',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              icon: new Icon(Icons.account_circle_outlined),
              iconColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 40,
          width: 350,
          child: TextField(
            controller: _pass,
            obscureText: text,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.remove_red_eye_outlined),
                onPressed: () {
                  setState(() {
                    if (text == true) {
                      text = false;
                    } else {
                      text = true;
                    }
                  });
                },
              ),
              labelText: 'Password',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              icon: new Icon(Icons.password_rounded),
              iconColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          width: 200,
          // ignore: sort_child_properties_last
          child: TextButton(
            onPressed: () async {
              CheckUser();
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white, fontSize: 16, letterSpacing: 1.2),
            ),
          ),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        (error)
            ? Row(
                // ignore: sort_child_properties_last
                children: [
                  Icon(Icons.info, color: Colors.red),
                  const Text(
                    'Invalid Credentials',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            : Row(
                // ignore: sort_child_properties_last
                children: <Widget>[
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign up',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Signup_Screen();
                      }));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
      ],
    );
  }

  void CheckUser() async {
    var url = Uri.parse('http://localhost:3000/user/login');

    var response = await http
        .post(url, body: {'ubicode': _user.text, 'password': _pass.text});

    print(response.statusCode);

    if (response.statusCode == 200) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Dashboard();
      }));
    } else {
      setState(() {
        error = true;
      });
    }
  }
}
