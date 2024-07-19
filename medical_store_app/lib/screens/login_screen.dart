import 'package:flutter/material.dart';
import 'package:medical_store_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            backgroundImage: AssetImage('Assets/images/logo.png'),
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 20),
          Text(
            'Quick Medical',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Please Enter your Mobile Number",
            style: TextStyle(color: Color(0xFF9E9E9E)),
          ),
          Text(
            textAlign: TextAlign.left,
            "to Login /Sign Up",
            style: TextStyle(color: Color(0xFF9E9E9E)),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: '+91 9265614292',
            ),

            // keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                    Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF3A5ED8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              'CONTINUE',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ])));
  }
}
