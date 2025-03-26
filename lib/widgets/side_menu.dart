import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
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
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {
              Navigator.pushNamed(context,'/home_page')
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              Navigator.pushNamed(context,'/profile_page')
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Skills'),
            onTap: () => {
           Navigator.pushNamed(context,'/skills_page')
            }
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Contact'),
            onTap: () => {
           Navigator.pushNamed(context,'/contact_page')
            }
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.pushNamed(context,'/settings_page')
            },
          ),
        ],
      ),
    );
  }
}