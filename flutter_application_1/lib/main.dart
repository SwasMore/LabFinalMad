import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/homepage.dart';
//import 'package:flutter_application_1/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(),
      //initialRoute: '/home',
      routes: {
        '/login': (BuildContext context) => const LoginScreen(),
        '/home': (BuildContext context) => HomeScreen(),
        '/homepage': (BuildContext context) => Home1(),
        '/profile': (BuildContext context) => const ProfileScreen(),
      },
    );
  }
}
