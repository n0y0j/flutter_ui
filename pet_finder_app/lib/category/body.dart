import 'package:flutter/material.dart';
import 'package:pet_finder_app/category/category_widget.dart';
import 'package:pet_finder_app/category/condition_filter.dart';
import 'package:pet_finder_app/data.dart';

class Body extends StatelessWidget {
  final Category category;

  Body({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ConditionFilter(), CategoryWidget(category: category)],
    );
  }
}
