import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      drawer: const SideMenu(),
      body: const Center( 
        child: Text('Welcome to the Contact Page!'),
      ),
    );
  }
}