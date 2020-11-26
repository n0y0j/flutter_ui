import 'package:flutter/material.dart';
import 'package:pet_finder_app/components/pet_widget.dart';
import 'package:pet_finder_app/data.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
    @required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        childAspectRatio: 1 / 1.55,
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        children: getPetList()
            .where((element) => element.category == category)
            .map((item) {
          return PetWidget(pet: item, index: null, context: context);
        }).toList(),
      ),
    ));
  }
}
