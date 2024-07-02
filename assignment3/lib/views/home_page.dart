import 'package:assignment3/components/category.dart';
import 'package:assignment3/components/offercard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/images/logo.png', height: 30),
            Text('Stylish', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          CircleAvatar(
              backgroundImage: AssetImage("Assets/images/profileicon.png"))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategorySection(),
              SizedBox(height: 16),
              OfferCard(
                title: '50-40% OFF',
                subtitle: 'Now in (product)\nAll colours',
                buttonText: 'Shop Now',
                color: Colors.pink[100],
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Deal of the Day',
                subtitle: '22h 55m 20s remaining',
                buttonText: 'View all',
                color: Colors.blue[100],
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Special Offers',
                subtitle:
                    'We make sure you get the offer you need at best prices',
                buttonText: 'Visit now',
                color: Colors.white,
                textColor: Colors.black,
                image: 'Assets/images/Shoes.png',
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'Trending Products',
                subtitle: 'Last Date 29/02/22',
                buttonText: 'View all',
                color: Colors.pink[100],
              ),
              SizedBox(height: 16),
              OfferCard(
                title: 'New Arrivals',
                subtitle: 'Summer’ 25 Collections',
                buttonText: 'View all',
                textColor: Colors.black,
                color: Colors.white,
                image: 'Assets/images/summer_sale.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
