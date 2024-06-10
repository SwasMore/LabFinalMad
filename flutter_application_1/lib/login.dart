import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/screens/homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String userName = '';
  late String email = '';
  late String password = '';

  late String userNameError = '';

  Future<void> handleLoginPress() async {
    //await
    print('email: $email');
    print('password : $password');
    if (!EmailValidator.validate(email)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Warning!!'),
            icon: Icon(Icons.warning),
            content: Container(
              child: Text('Invalid Email!! PLease check your email '),
            ),
          );
        },
      );
      return;
    }
    print('Sending login request....');

    Uri uri = Uri.parse(
        'https://task-management-backend-vhcq.onrender.com/api/v1/login');

    var payload = {
      'email': email,
      'password': password,
    };

    http.Response response = await http.post(uri, body: payload);
    print("login status code: ${response.statusCode}");
    print("login response body: ${response.body}");
    dynamic decoded = json.decode(response.body);
    print(decoded['data']);

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Home1()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          'Login',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Login',
              style: GoogleFonts.concertOne(
                textStyle: TextStyle(fontSize: 45, color: Colors.indigoAccent),
                fontWeight: FontWeight.w100,
              ),
            ),
            TextFormField(
                style: TextStyle(fontSize: 16),
                onChanged: (value) {
                  print('email : $value');
                  setState(() {
                    email = value;
                  });
                },
                decoration: InputDecoration(
                    label: Text('Email'),
                    icon: Icon(Icons.email),
                    hintText: 'Enter email',
                    hintStyle: TextStyle(color: Colors.grey))),
            TextFormField(
                style: TextStyle(fontSize: 16),
                onChanged: (value) {
                  print('password : $value');
                  setState(() {
                    password = value;
                  });
                },
                decoration: InputDecoration(
                  label: Text('Password'),
                  icon: Icon(Icons.key),
                  hintText: 'Enter password',
                  hintStyle: TextStyle(color: Colors.grey),
                )),
            //Text(userName)
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                handleLoginPress();
              },
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget getInputRow({String? label, String? hint}) {
    return Row(
      children: [
        Text(label.toString()),
        SizedBox(
          width: 10,
        ),
        Text(
          hint.toString(),
          style: TextStyle(color: Colors.black26),
        )
      ],
    );
  }

  ButtonStyle buttonStyle = ButtonStyle(
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)))),
      backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 20, vertical: 15)));
}
