import 'package:flutter/material.dart';
import 'package:home_cleaning_app/calendar/task_screen.dart';
import 'package:home_cleaning_app/components/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _calendarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Calendar(calendarController: _calendarController),
        TaskWidget()
      ],
    );
  }
}
