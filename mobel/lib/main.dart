import 'package:flutter/material.dart';
import 'package:mobel/login_screen.dart';
import 'package:mobel/mainmenu.dart';
import 'package:mobel/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/mainmenu': (context) => MainMenu(),
      },
    );
  }
}
