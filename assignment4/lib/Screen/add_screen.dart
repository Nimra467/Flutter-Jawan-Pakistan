import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String priority = 'High';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB2B9FF),
      appBar:
          AppBar(backgroundColor: Color(0xFFB2B9FF), elevation: 0, actions: [
        CircleAvatar(
          backgroundImage: AssetImage('Assets/images/profileicon.png'),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Create new Task',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('10:00 A.M'),
                Text('04:30 P.M'),
              ],
            ),
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            Text('Choose Priority'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        priority == 'High' ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      priority = 'High';
                    });
                  },
                  child: Text('High'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        priority == 'Medium' ? Colors.orange : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      priority = 'Medium';
                    });
                  },
                  child: Text('Medium'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        priority == 'Low' ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      priority = 'Low';
                    });
                  },
                  child: Text('Low'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final task = {
                  'title': titleController.text,
                  'description': descriptionController.text,
                  'priority': priority,
                };
                Navigator.pop(context, task);
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
