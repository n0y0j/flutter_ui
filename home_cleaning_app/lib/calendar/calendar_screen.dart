import 'package:flutter/material.dart';
import 'package:home_cleaning_app/calendar/body.dart';
import 'package:home_cleaning_app/components/app_bar.dart';
import 'package:home_cleaning_app/constants.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: buildAppBar(text: "Select Date"),
      body: Body(),
    );
  }
}
