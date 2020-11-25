import 'package:flutter/material.dart';
import 'package:pet_finder_app/category/components/filter_widget.dart';

class ConditionFilter extends StatelessWidget {
  const ConditionFilter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildFilter("Mating", false),
            buildFilter("Adoption", true),
            buildFilter("Disappear", true),
          ],
        ),
      ),
    ]);
  }
}
