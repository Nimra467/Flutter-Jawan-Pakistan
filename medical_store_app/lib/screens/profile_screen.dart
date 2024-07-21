import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Hi, Amna Hassan"),
            subtitle: Text("Welcome to Quick Medical Store"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.book),
              Text("Edit Profile"),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_circle_right))
            ],
          ),
        ],
      ),
    );
  }
}
