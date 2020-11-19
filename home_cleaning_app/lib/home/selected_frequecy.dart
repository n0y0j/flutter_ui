import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/frequecy_card.dart';

class SelectedFrequecy extends StatefulWidget {
  @override
  _SelectedFrequecyState createState() => _SelectedFrequecyState();
}

class _SelectedFrequecyState extends State<SelectedFrequecy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Selected Frequecy",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        FrequecyCard()
      ],
    );
  }
}
