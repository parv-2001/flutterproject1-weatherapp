import 'package:flutter/material.dart';
import 'package:flutter_application_3/activity/home.dart';
import 'package:flutter_application_3/Activity/loading.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => Loading(),
      "/home": (context) => Home(),
      "/loading": (context) => Loading(),
    },
  ));
}
