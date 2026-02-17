import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Luxury Shop',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37)),
              ),
              const SizedBox(height: 40),
              const TextField(decoration: InputDecoration(hintText: 'Email', filled: true, fillColor: Color(0xFF1E1E1E))),
              const SizedBox(height: 20),
              const TextField(obscureText: true, decoration: InputDecoration(hintText: 'Password', filled: true, fillColor: Color(0xFF1E1E1E))),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/profile'),
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4AF37), minimumSize: const Size(double.infinity, 50)),
                child: const Text('Login', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 10),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/forget'), child: const Text('Forgot Password?', style: TextStyle(color: Colors.grey))),
              TextButton(onPressed: () => Navigator.pushNamed(context, '/signup'), child: const Text('Create Account', style: TextStyle(color: Colors.grey))),
            ],
          ),
        ),
      ),
    );
  }
}
