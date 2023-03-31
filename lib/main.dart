import 'package:flutter/material.dart';
import 'package:pageview_app/screen/home_page.dart';
import 'package:pageview_app/screen/home_page2.dart';
import 'package:pageview_app/screen/home_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage3(),
    );
  }
}

