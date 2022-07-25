import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard(
      {Key? key,
      required this.onTap,
      required this.title,
      required this.subTitle,
      required this.url,
      required this.rating})
      : super(key: key);
  final Function() onTap;
  final String title;
  final String subTitle;
  final String url;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft:  Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      color: Colors.grey,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Text(
                      rating.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
