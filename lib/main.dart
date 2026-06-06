import 'package:flutter/material.dart';
import 'package:food_app/page/bottomnav.dart';
import 'package:food_app/page/home.dart';
import 'package:food_app/page/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Onboarding());
  }
}
