import 'package:flutter/material.dart';
import 'package:restaurant_app/details.dart';

void main(){
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      Text('Discover',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      CircleAvatar(backgroundImage: NetworkImage('https://images.iphonephotographyschool.com/23057/1120/food.jpg'))

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
            SizedBox(height: .5,),
            Container(
              child: Expanded(child: ListView(
                children: [
                  buildItem('Madras Chettinaad', '526 reviews - 4305 State Bridge Rd', 'https://cdn.vox-cdn.com/thumbor/aNM9cSJCkTc4-RK1avHURrKBOjU=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/20059022/shutterstock_1435374326.jpg', 4.0),
                  buildItem('Persis Biryani', '147 reviews - 631 N Main St ', 'https://s3-media0.fl.yelpcdn.com/bphoto/Tq1B1lcTFtWgipcfnVAYUQ/o.jpg', 4.0),
                  buildItem('Mayuri Indian Grill', '63 reviews - 5354 McGinnis Ferry Rd', 'https://s3-media0.fl.yelpcdn.com/bphoto/lbPSDfUizeoruPa_hGKncQ/o.jpg', 4.5),

                ],
              ),),
            )
          ],
        ),
      ),
    );

  }
  buildItem(String title, String subTitle, String url, double rating){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(url),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(blurRadius: 2.0,
                  spreadRadius: 1.0,
                  color: Colors.grey,)
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                      Text(subTitle, style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey
                      ),)
                    ],
                  ),
                  CircleAvatar(backgroundColor: Colors.orange, child: Text(rating.toString(), style: TextStyle(
                    color: Colors.white
                  ),),)
                ],
              ),
            )
          ],
        ),
    );
  }

  buildTopChip(String label, bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5,),

      child: Chip(
        padding: EdgeInsets.all(8),
        label: Text(
          label,
          style: TextStyle(color: Colors.black,fontSize: 16),

        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}

