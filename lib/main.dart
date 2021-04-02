import 'package:flutter/material.dart';
import 'package:flutter_video_platform/pages/home.dart';
import 'package:flutter_video_platform/pages/profile.dart';
import 'package:flutter_video_platform/pages/register.dart';
import 'package:flutter_video_platform/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Videogram',
      theme: ThemeData(primarySwatch: Colors.orange),
      routes: {
        '/': (context) => Login(),
        Register.routeName: (context) => Register(),
        Login.routeName: (context) => Login(),
        Profile.routeName: (context) => Profile(),
        Home.routeName: (context) => Home()
      },
    );
  }
}
