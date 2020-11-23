import 'package:flutter/material.dart';
import 'package:pet_finder_app/components/app_bar.dart';
import 'package:pet_finder_app/home/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppbar(),
      body: Body(),
    );
  }
}
