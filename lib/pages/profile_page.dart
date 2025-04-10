import 'package:flutter/material.dart';
import '../widgets/side_menu_widget.dart';
import '../widgets/dark_mode_toggle_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  // Quick Links
  final List<String> _quickLinks = [
    "Website: https://google.co.uk/",
    "GitHub: https://github.com/",
    "Twitter: https://x.com/",
    "Facebook: https://facebook.com/",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        actions: [
          const DarkModeToggleWidget(),
        ],
      ),
      drawer: const SideMenu(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 32),

            // Profile Image with circular border
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueAccent, width: 2),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/lake.jpg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // User Info
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: const [
                  Text(
                    "Scott O'Brien",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("Junior Software Tester"),
                  SizedBox(height: 4),
                  Text("Leeds, United Kingdom"),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Quick Links Title
            const Text(
              'Quick Links',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 8),

            // Quick Links List
            Expanded(
              child: ListView.builder(
                itemCount: _quickLinks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Card(
                      child: ListTile(
                        leading: const Icon(Icons.link),
                        title: Text(_quickLinks[index]),
                        // onTap: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
