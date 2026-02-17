import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';
import 'screens/forget_screen.dart';
import 'homescreen/home_screen.dart';
import 'package:food_app/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Shop',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFD4AF37),
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),

    );
  }
}













