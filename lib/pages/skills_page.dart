import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills Page'),
      ),
      body: Center(
        child: Text('Welcome to the Skills Page!'),
      ),
    );
  }
}