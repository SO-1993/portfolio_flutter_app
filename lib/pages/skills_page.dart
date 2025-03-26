import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Page'),
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Skills Page!'),
      ),
    );
  }
}