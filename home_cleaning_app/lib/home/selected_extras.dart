import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/extra_widget.dart';

class SelectedExtras extends StatefulWidget {
  @override
  _SelectedExtrasState createState() => _SelectedExtrasState();
}

class _SelectedExtrasState extends State<SelectedExtras> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Selected Extras",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15),
        ExtraWidget()
      ],
    );
  }
}
