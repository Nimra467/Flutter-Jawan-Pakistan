import 'package:flutter/material.dart';
import 'package:property_app/screens/property_list.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.health_and_safety_sharp, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(value: true, onChanged: (bool? value) {}),
                Text('Remember me'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Sign In'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Forgot the password?'),
            ),
            SizedBox(height: 20),
            Text('or continue with'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.facebook_rounded),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.apple_rounded),
                  onPressed: () {},
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
