import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Reset Password', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37))),
            const SizedBox(height: 30),
            const TextField(decoration: InputDecoration(hintText: 'Email', filled: true, fillColor: Color(0xFF1E1E1E))),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4AF37), minimumSize: const Size(double.infinity, 50)), child: const Text('Send Reset Link', style: TextStyle(color: Colors.black))),
          ]),
        ),
      ),
    );
  }
}
