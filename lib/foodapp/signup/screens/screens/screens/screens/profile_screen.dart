import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Color(0xFFD4AF37))),
        backgroundColor: const Color(0xFF1E1E1E),
        actions: [
          IconButton(icon: const Icon(Icons.search, color: Color(0xFFD4AF37)), onPressed: () => Navigator.pushNamed(context, '/search')),
        ],
      ),
      body: const Center(child: Text('User Profile', style: TextStyle(fontSize: 22, color: Colors.white))),
    );
  }
}
