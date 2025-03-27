import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/tech_skills_widget.dart';
import '../widgets/dark_mode_toggle_widget.dart';

class SkillsPage extends StatelessWidget {
  SkillsPage({super.key});

  final List<String> _skills = [
    "Flutter",
    "Flutter Patrol",
    "JavaScript",
    "SQL",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skills Page'),
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),

      body: Center(
        child: SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _skills.length,
            itemBuilder: (context, index) {
              return TechSkillsWidget(
                skillName: _skills[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
