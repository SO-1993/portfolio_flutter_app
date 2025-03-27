import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/widgets/side_menu.dart';
import 'package:portfolio_flutter_app/widgets/square.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final List _posts = [
      "Name: Scott O'Brien",
      "Role: Junior Software Tester",
      "Company: Optimum Medical",
      "Location: Leeds, UK",
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      drawer: const SideMenu(),

      body: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            return MySquare(
              child: _posts[index],
            );
          }
      ),
    );
  }
}