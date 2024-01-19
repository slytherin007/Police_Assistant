import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader('General'),
            ListTile(
              title: Text('Account Settings'),
              onTap: () {
                // Add navigation to account settings page
              },
            ),
            ListTile(
              title: Text('Privacy'),
              onTap: () {
                // Add navigation to privacy settings page
              },
            ),
            Divider(),
            SectionHeader('User Information'),
            ListTile(
              title: Text('About Me'),
              onTap: () {
                // Add navigation to about me page
              },
            ),
            ListTile(
              title: Text('FAQ'),
              onTap: () {
                // Add navigation to FAQ page
              },
            ),
            Divider(),
            SectionHeader('Other Settings'),
            ListTile(
              title: Text('Notifications'),
              onTap: () {
                // Add navigation to notifications settings page
              },
            ),
            ListTile(
              title: Text('Theme'),
              onTap: () {
                // Add navigation to theme settings page
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
