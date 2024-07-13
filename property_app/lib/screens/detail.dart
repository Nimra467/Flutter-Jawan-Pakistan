import 'package:flutter/material.dart';

class PropertyDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String address;
  final int beds;
  final int baths;
  final int garage;

  PropertyDetailScreen({
    required this.imageUrl,
    required this.title,
    required this.address,
    required this.beds,
    required this.baths,
    required this.garage,
  });

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
            Image.network(imageUrl),
            SizedBox(height: 10),
            Text(title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(address, style: TextStyle(color: Colors.grey)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.bed),
                    SizedBox(width: 5),
                    Text('$beds Beds'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.bathtub),
                    SizedBox(width: 5),
                    Text('$baths Baths'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.garage),
                    SizedBox(width: 5),
                    Text('$garage Garage'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage, amazing curb appeal and entertain area. Water views. Tons of built-ins & extras.',
              style: TextStyle(fontSize: 16),
            ),
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
