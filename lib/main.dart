import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/pages/contact_page.dart';
import 'package:portfolio_flutter_app/pages/home_page.dart';
import 'package:portfolio_flutter_app/pages/profile_page.dart';
import 'package:portfolio_flutter_app/pages/projects_page.dart';
import 'package:portfolio_flutter_app/pages/settings_page.dart';
import 'package:portfolio_flutter_app/pages/skills_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple),
    ),
      home: const HomePage(),
      routes: {
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/projects_page': (context) => const ProjectsPage(),
        '/skills_page': (context) => const SkillsPage(),
        '/contact_page': (context) => ContactPage(),
        '/settings_page': (context) => const SettingsPage(),
      }
    );
  }
}