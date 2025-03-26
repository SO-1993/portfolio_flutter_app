import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
