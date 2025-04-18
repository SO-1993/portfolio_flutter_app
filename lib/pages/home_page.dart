import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/dark_mode_toggle_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, 
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
