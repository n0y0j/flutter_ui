import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key key,
    @required CalendarController calendarController,
  })  : _calendarController = calendarController,
        super(key: key);

  final CalendarController _calendarController;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
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
    );
  }
}
