import 'package:flutter/material.dart';

import 'world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void SetupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/London');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime
    });
  }




  @override
  void initState() {
    super.initState();
    SetupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
backgroundColor: Colors.blue[900],
        body: Center(
          child: SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ),

        ),

      ),

    );
  }
}
