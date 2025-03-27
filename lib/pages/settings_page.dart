import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text('Welcome to the Settings Page!'),
      ),
    );
  }
}