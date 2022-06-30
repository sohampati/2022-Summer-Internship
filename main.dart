import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'pages/loading.dart';
import 'pages/choose_location.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/loading':(context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => ChooseLocation(),
    },
  )
  );
}

