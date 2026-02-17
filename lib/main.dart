// import 'package:flutter/material.dart';
// import 'package:food_app/foodapp/food_app.dart';
// void main (){
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Food App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//       ),
//       home: const FoodApp(),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:food_app/foodapp/signup/screens/screens/login_screen.dart';
import 'package:food_app/foodapp/signup/screens/screens/screens/forget_screen.dart';
import 'package:food_app/foodapp/signup/screens/signup_screen.dart';
import 'home_screen.dart';


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
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/home': (context) => HomeScreen(),


      },
    );
  }
}













