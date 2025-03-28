import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/dark_mode_toggle_widget.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interests Page'),
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Interests Page!'),
      ),
    );
  }
}