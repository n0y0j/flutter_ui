import 'package:flutter/material.dart';
import 'package:home_cleaning_app/home/selected_cleaning.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectedCleaning(),
      ],
    );
  }
}
