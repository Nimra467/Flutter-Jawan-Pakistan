import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String address;
  final int beds;
  final int baths;
  final int garage;
  final VoidCallback onTap;

  PropertyCard({
    required this.imageUrl,
    required this.title,
    required this.address,
    required this.beds,
    required this.baths,
    required this.garage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Image.network(imageUrl),
            ListTile(
              title: Text(title),
              subtitle: Text(address),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
