import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/search_box.dart';
import 'package:food_ordering_app/screens/components/category_list.dart';
import 'package:food_ordering_app/screens/components/discount_card.dart';
import 'package:food_ordering_app/screens/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard()
      ],
    );
  }
}
