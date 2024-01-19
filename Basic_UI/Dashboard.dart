import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.abc_rounded,
                size: 50,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settings");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              // onTap: (){
              //   Navigator.pop(context);
              //   Navigator.pushNamed(context, "/profile");
              // },
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // 1st ContainerCard
          ContainerCard(
            title: 'Container 1',
            onTap: () {
              // Add navigation logic for Container 1
              print('Container 1 tapped!');
            },
          ),

          // 2nd ContainerCard
          ContainerCard(
            title: 'Container 2',
            onTap: () {
              // Add navigation logic for Container 2
              print('Container 2 tapped!');
            },
          ),

          // 3rd ContainerCard
          ContainerCard(
            title: 'Container 3',
            onTap: () {
              // Add navigation logic for Container 3
              print('Container 3 tapped!');
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushNamed(context, "/audiorecord");
        },
        child: Icon(Icons.mic),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ContainerCard({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
