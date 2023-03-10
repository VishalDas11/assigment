import 'package:assigment/screen/home_screen.dart';
import 'package:assigment/screen/login_screen.dart';
import 'package:assigment/screen/profile_screen.dart';
import 'package:assigment/screen/signUp_screen.dart';
import 'package:assigment/screen/welcome_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen()
    );
  }
}
