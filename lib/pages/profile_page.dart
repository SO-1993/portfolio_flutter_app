import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Profile Page!'),
      ),
    );
  }
}