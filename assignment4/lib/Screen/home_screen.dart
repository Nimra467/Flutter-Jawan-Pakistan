import 'package:assignment4/Screen/add_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> tasks = [];

  void _addTask(Map<String, dynamic> task) {
    setState(() {
      tasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB2B9FF),
      appBar:
          AppBar(backgroundColor: Color(0xFFB2B9FF), elevation: 0, 
          actions: [
        CircleAvatar(
          backgroundImage: AssetImage('Assets/images/profileicon.png'),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome to Notes',
                      style: TextStyle(color: Colors.black)),
                  Text('Have a great Day',
                      style: TextStyle(color: Colors.black)),
                ],
              ),
            ]),
            Text('My Priority Task', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Tasks',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.green),
                  onPressed: () async {
                    final newTask = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddTaskScreen()),
                    );
                    if (newTask != null) {
                      _addTask(newTask);
                    }
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today’s Task',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('Weekly Task', style: TextStyle(fontSize: 16)),
                Text('Monthly Task', style: TextStyle(fontSize: 16)),
              ],
            ),
            if (tasks.isEmpty)
              Text('No tasks yet.')
            else
              ...tasks.map((task) {
                return Card(
                  child: ListTile(
                    title: Text(task['title']),
                    subtitle: Text(task['description']),
                    trailing: Text(task['priority']),
                  ),
                );
              }).toList(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
