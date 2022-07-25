import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:restaurant_app/details.dart';
import 'package:restaurant_app/profile.dart';
import 'package:restaurant_app/restaurant_card.dart';

void main() {
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UberEats Sim',
      home: DetailPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 45, right: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfilePage()));
                          },
                          child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.iphonephotographyschool.com/23057/1120/food.jpg')))
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildTopChip("Indian", true),
                        buildTopChip("Italian", false),
                        buildTopChip("Mexican", false),
                        buildTopChip("Asian", false),
                        buildTopChip("Chinese", false),
                        buildTopChip("African", false),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: .5,
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    RestaurantCard(
                      title: 'Madras Chettinaad',
                      subTitle: '526 reviews - 4305 State Bridge Rd',
                      url:
                          'https://cdn.vox-cdn.com/thumbor/aNM9cSJCkTc4-RK1avHURrKBOjU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20059022/shutterstock_1435374326.jpg',
                      rating: 4.0,
                      onTap: () {
                        log("Welcome to Madras Chettinaad");
                      },
                    ),
                    RestaurantCard(
                      title: 'Persis Biryani',
                      subTitle: '147 reviews - 631 N Main St ',
                      url:
                          'https://s3-media0.fl.yelpcdn.com/bphoto/Tq1B1lcTFtWgipcfnVAYUQ/o.jpg',
                      rating: 4.0,
                      onTap: () {
                        log("Welcome to Persis Biryani");
                      },
                    ),
                    RestaurantCard(
                      title: 'Mayuri Indian Grill',
                      subTitle: '63 reviews - 5354 McGinnis Ferry Rd',
                      url:
                          'https://s3-media0.fl.yelpcdn.com/bphoto/lbPSDfUizeoruPa_hGKncQ/o.jpg',
                      rating: 4.5,
                      onTap: () {
                        log("Welcome to  Mayuri Indian Grill");
                      },
                    ),
                    // RestaurantCard(
                    //     'Mayuri Indian Grill',
                    //     '63 reviews - 5354 McGinnis Ferry Rd',
                    //     'https://s3-media0.fl.yelpcdn.com/bphoto/lbPSDfUizeoruPa_hGKncQ/o.jpg',
                    //     4.5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildItem(String title, String subTitle, String url, double rating,
      Function() onClicked) {}

  buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Chip(
        padding: EdgeInsets.all(8),
        label: Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}
