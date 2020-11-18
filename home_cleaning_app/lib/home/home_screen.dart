import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/app_bar.dart';
import 'package:home_cleaning_app/constants.dart';
import 'package:home_cleaning_app/home/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
