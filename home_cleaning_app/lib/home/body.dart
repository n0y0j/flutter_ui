import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/frequecy_card.dart';
import 'package:home_cleaning_app/constants.dart';
import 'package:home_cleaning_app/home/selected_cleaning.dart';
import 'package:home_cleaning_app/home/selected_extras.dart';
import 'package:home_cleaning_app/home/selected_frequecy.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedCleaning(),
          SizedBox(height: 13),
          SelectedFrequecy(),
          SizedBox(height: 23),
          SelectedExtras(),
        ],
      ),
    );
  }
}
