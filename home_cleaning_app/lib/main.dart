import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_cleaning_app/components/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeCleaning',
      theme: ThemeData(fontFamily: 'ubuntu'),
      home: IntroScreen(),
    );
  }
}
