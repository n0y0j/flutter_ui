import 'package:flutter/material.dart';
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
        TableCalendar(
          calendarController: _calendarController,
          initialCalendarFormat: CalendarFormat.week,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          formatAnimation: FormatAnimation.slide,
          headerStyle: HeaderStyle(
            centerHeaderTitle: true,
            formatButtonVisible: false,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            leftChevronIcon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 15,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 15,
            ),
            leftChevronMargin: EdgeInsets.only(left: 70),
            rightChevronMargin: EdgeInsets.only(right: 70),
          ),
          calendarStyle: CalendarStyle(
            weekendStyle: TextStyle(
              color: Colors.white,
            ),
            weekdayStyle: TextStyle(
              color: Colors.white,
            ),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekendStyle: TextStyle(
              color: Colors.white,
            ),
            weekdayStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
