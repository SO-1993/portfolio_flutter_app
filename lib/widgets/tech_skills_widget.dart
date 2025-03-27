import 'package:flutter/material.dart';

class TechSkillsWidget extends StatelessWidget {
  const TechSkillsWidget({super.key, required this.skillName}); // Changed from "child" to "skillName"

  final String skillName; // Renamed from "child" to "skillName"

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
        ),
        child: Center(
          child: Text(
            skillName, // Use renamed variable
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
