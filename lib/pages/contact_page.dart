import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/contact_info_widget.dart';
import 'package:portfolio_flutter_app/widgets/dark_mode_toggle_widget.dart';

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
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),

      body: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            return ContactInfoWidget(
              child: _posts[index],
            );
          }
      ),
    );
  }
}