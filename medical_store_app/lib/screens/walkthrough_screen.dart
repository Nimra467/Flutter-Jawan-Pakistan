import 'package:flutter/material.dart';
import 'package:medical_store_app/screens/login_screen.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Image.asset("Assets/images/splash.png"),
            SizedBox(height: 30),
            Text(
              "View and buy",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            Text(
              "Medicine online",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 20),
            Text(
              "Etiam mollis metus non purus",
              style: TextStyle(color: Color(0xFF9E9E9E)),
            ),
            Text(
              "faucibus solliciudin,Pellenteque",
              style: TextStyle(color: Color(0xFF9E9E9E)),
            ),
            Text(
              "sagittis mi, Integer",
              style: TextStyle(color: Color(0xFF9E9E9E)),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9E9E9E),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF3A5ED8),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF9E9E9E),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Color(0xFF9E9E9E),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF3A5ED8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
     
    );
  }
}
