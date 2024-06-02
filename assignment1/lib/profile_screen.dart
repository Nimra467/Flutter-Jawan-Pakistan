import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Column(
        children: [
          const Text(
            'Name:Nimra',
          ),
          Text('Skills:HTML,CSS,Python,Dart'),
          Text('Hobbies:Reading, Cooking'),
          Text('Profession:Flutter Developer'),
        ],
      ),
    );
  }
}
