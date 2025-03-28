import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);


    return Drawer(
      child: Container(
        color: theme.scaffoldBackgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: theme.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.fill,  
                  image: AssetImage('assets/images/lake.jpg'),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Side Menu',
                  style: TextStyle(
                    color: theme.textTheme.bodyMedium?.color ?? Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // List tiles for navigation
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pushNamed(context, '/home_page'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () => Navigator.pushNamed(context, '/profile_page'),
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Skills'),
              onTap: () => Navigator.pushNamed(context, '/skills_page'),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('Projects'),
              onTap: () => Navigator.pushNamed(context, '/projects_page'),
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () => Navigator.pushNamed(context, '/contact_page'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Education'),
              onTap: () => Navigator.pushNamed(context, '/education_page'),
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Interests'),
              onTap: () => Navigator.pushNamed(context, '/interests_page'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => Navigator.pushNamed(context, '/settings_page'),
            ),
          ],
        ),
      ),
    );
  }
}
