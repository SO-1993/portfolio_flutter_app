import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu_widget.dart';
import 'package:portfolio_flutter_app/widgets/dark_mode_toggle_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Settings Page!'),
      ),
    );
  }
}