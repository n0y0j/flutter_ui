import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/cleaning_card.dart';

class SelectedCleaning extends StatefulWidget {
  @override
  _SelectedCleaningState createState() => _SelectedCleaningState();
}

class _SelectedCleaningState extends State<SelectedCleaning> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          "Selected Cleaning",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        CleaningCard(),
      ],
    );
  }
}
