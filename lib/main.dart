import 'package:flutter/material.dart';
import 'package:portfolio_flutter_app/pages/about_me_page.dart';
import 'package:provider/provider.dart';
import '../pages/contact_page.dart';
import '../pages/home_page.dart';
import '../pages/profile_page.dart';
import '../pages/projects_page.dart';
import '../pages/settings_page.dart';
import '../pages/skills_page.dart';
import 'package:portfolio_flutter_app/pages/about_me_page.dart';
import 'package:portfolio_flutter_app/pages/education_page.dart';
import '../theme/theme_provider.dart';
import '../theme/theme.dart';

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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.themeData,
      // theme: lightMode,
      // darkTheme: darkMode,
      // themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light, 
      home: const HomePage(),
      routes: {
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => const ProfilePage(),
        '/projects_page': (context) => const ProjectsPage(),
        '/skills_page': (context) => SkillsPage(),
        '/contact_page': (context) => ContactPage(),
        '/education_page': (context) => EducationPage(),
        '/about_me_page': (context) => AboutMePage(),
        '/settings_page': (context) => const SettingsPage(),
      },
    );
  }
}
