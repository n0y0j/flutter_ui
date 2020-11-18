import 'package:flutter/material.dart';
import 'package:home_cleaning_app/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ubuntu',
      ),
      home: HomeScreen(),
    );
  }
}
