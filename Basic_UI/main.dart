import 'package:flutter/material.dart';
import 'package:police_assit/Audiorecord.dart';
import 'package:police_assit/Dashboard.dart';
import 'package:police_assit/Profile.dart';
import 'package:police_assit/Settings.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      routes: {
        "/dashboard":(context)=>Dashboard(),
        "/settings":(context)=>Settings(),
        "/profile":(context)=>Profile(),
        "/audiorecord":(context)=>Audiorecord(),


      },
    );
  }
}