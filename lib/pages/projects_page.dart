import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects Page'),
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Projects Page!'),
      ),
    );
  }
}