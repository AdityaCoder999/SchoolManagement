import 'package:flutter/material.dart';
import 'package:school_management_app/screens/login_screen.dart';
import 'package:http/http.dart' as http;

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key});

  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();

}

class _Signup_ScreenState extends State<Signup_Screen> {
  TextEditingController _name = TextEditingController();
  TextEditingController _user = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  var error = false;
  var text = true;
  String dropdownValue = 'Student';

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
          height: 500,
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
              LoginCard(context),
            ],
          ),
        )),
      ),
    );
  }

  Column LoginCard(BuildContext context) {
    String? Member;
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
          'Register yourself to continue',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        const SizedBox(height: 35),
        Container(
          height: 40,
          width: 350,
          child: TextField(
            controller: _name,
            decoration: InputDecoration(
              labelText: 'Name',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              icon: new Icon(Icons.portrait_rounded),
              iconColor: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
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
          height: 20,
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
        Row(
          children: [
            Icon(Icons.person, color: Colors.blue,),
            SizedBox(width: 30,),
            Container(
              width: 315,
              height: 40,
              child: DropdownButton<String>(
                
                value: dropdownValue,
                items: <String>['Student', 'Teacher']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 15),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              alignment: Alignment.centerLeft,
            ),
          ],
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
                RegisterUser();
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white, fontSize: 16, letterSpacing: 1.2),
              )),
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        SizedBox(
          height: 15,
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
                    'Already have an account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    child: const Text(
                      'Log in',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Login_screen();
                      }));
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
      ],
    );
    ;
  }

  void RegisterUser() async {
    var url = Uri.parse('http://localhost:3000/user/update');
    var response = await http.patch(url, body: {
      'name': _name.text,
      'ubicode': _user.text,
      'type': dropdownValue.toUpperCase(),
      'password': _pass.text
    });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Login_screen();
      }));
    } else {
      setState(() {
        error = true;
      });
    }
  }
}


 