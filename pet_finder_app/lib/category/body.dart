import 'package:flutter/material.dart';
import 'package:pet_finder_app/category/condition_filter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConditionFilter(),
      ],
    );
  }
}
