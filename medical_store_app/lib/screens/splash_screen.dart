import 'package:flutter/material.dart';
import 'package:medical_store_app/screens/walkthrough_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3A5ED8),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('Assets/images/logo.png'),
              backgroundColor: Colors.white,
            ),
            // fit: BoxFit.cover,

            SizedBox(height: 20),
            Text(
              'Quick Medical',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          ],
        )));
  }
}
