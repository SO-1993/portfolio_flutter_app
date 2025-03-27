import 'package:flutter/material.dart';
import '../pages/contact_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/projects_page.dart';
import '../pages/settings_page.dart';
import '../pages/skills_page.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),
      routes: {
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/projects_page': (context) => const ProjectsPage(),
        '/skills_page': (context) => SkillsPage(),
        '/contact_page': (context) => ContactPage(),
        '/settings_page': (context) => const SettingsPage(),
      },
    );
  }
}
