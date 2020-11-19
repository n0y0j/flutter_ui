import 'package:flutter/material.dart';
import 'package:home_cleaning_app/calendar/calendar_screen.dart';
import 'package:home_cleaning_app/components/extra_card.dart';
import 'package:home_cleaning_app/constants.dart';

class ExtraWidget extends StatefulWidget {
  @override
  _ExtraWidgetState createState() => _ExtraWidgetState();
}

class _ExtraWidgetState extends State<ExtraWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ExtraCard("fridge", "Inside Fridge", true),
            ExtraCard("organise", "Organise", false),
            ExtraCard("blind", "Small Blinds", false),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ExtraCard("garden", "Patio", false),
            ExtraCard("organise", "Grocery", true),
            ExtraCard("blind", "Curtains", false),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalendarScreen(),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: purple,
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
