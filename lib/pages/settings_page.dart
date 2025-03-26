import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';

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