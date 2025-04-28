import 'package:flutter/material.dart';
import 'package:personalportfolio/screens/homepage.dart';
import 'package:personalportfolio/utils/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "SALIM-protfolio",

      home: Responsive(mobile: Homepage(), desktop: Homepage()),
    );
  }
}
