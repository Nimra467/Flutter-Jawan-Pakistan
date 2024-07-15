import 'package:flutter/material.dart';

class PropertyDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
                'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(height: 10),
            Text('Craftsman House',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('520 N Beaudry Ave, Los Angeles',
                style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.bed),
                Text('4 Beds'),
                Icon(Icons.bathtub),
                Text('4 Baths'),
                Icon(Icons.garage),
                Text('1 Garage'),
              ],
            ),
            SizedBox(height: 20),
            Text(
                'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage, amazing curb appeal and entertain area. Water views. Tons of built-ins & extras.',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}
