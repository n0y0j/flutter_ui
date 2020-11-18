import 'package:flutter/material.dart';
import 'package:home_cleaning_app/home/selected_cleaning.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SelectedCleaning()],
    );
  }
}
