import 'package:flutter/material.dart';
import 'package:property_app/components/property_Card.dart';
import 'package:property_app/screens/detail.dart';
import 'package:property_app/screens/wishlist_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover Best Suitable Property'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WishlistScreen(),
                  ));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Location',
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceChip(label: Text('House'), selected: true),
                ChoiceChip(label: Text('Apartment'), selected: false),
                ChoiceChip(label: Text('Plot'), selected: false),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  PropertyCard(
                    imageUrl:
                        'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    title: 'Craftsman House',
                    address: '520 N Beaudry Ave, Los Angeles',
                    beds: 4,
                    baths: 4,
                    garage: 1,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PropertyDetailScreen(),
                        ),
                      );
                    },
                  ),
                  PropertyCard(
                    imageUrl:
                        'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    title: 'Craftsman House 1',
                    address: '520 N Beaudry Ave, Los Angeles',
                    beds: 4,
                    baths: 4,
                    garage: 1,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PropertyDetailScreen(),
                        ),
                      );
                    },
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
