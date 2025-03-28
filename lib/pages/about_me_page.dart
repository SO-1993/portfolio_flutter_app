import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/dark_mode_toggle_widget.dart';

class AboutMePage extends StatelessWidget {
    AboutMePage({super.key});

  final List<String> _aboutMe = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me Page'),
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),
      body: ListView.builder(
        itemCount: _aboutMe.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_aboutMe[index]),
            onTap: () {
              // Add functionaluty later here if necessary.
            },
          );
        },
      ),
    );
  }
}
