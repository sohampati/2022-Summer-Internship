import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.cyan[400],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://wallpaperaccess.com/full/4129901.jpg'),
                radius: 40.0,
              ),

            ),
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.red,
                letterSpacing: 2.0,



              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Itachi Uchiha',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,



              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14.0,
                letterSpacing: 2.0,



              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '1000000',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,



              ),
            ),
            SizedBox(height: 30.0),
            Row(


              children: [

                Icon(
                  Icons.email,
                  color: Colors.grey[400],

                ),
                SizedBox(width: 38.0),
                Text(

                  'hateuchiha@strongestclan.com',
                  style:TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,

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


