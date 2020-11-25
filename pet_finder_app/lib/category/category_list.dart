import 'package:flutter/material.dart';
import 'package:pet_finder_app/category/body.dart';
import 'package:pet_finder_app/components/category_bar.dart';
import 'package:pet_finder_app/data.dart';

class CategoryList extends StatelessWidget {
  final Category category;

  CategoryList({@required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildCategoryAppbar(
        name: (category == Category.HAMSTER
                ? "Hamster"
                : category == Category.CAT
                    ? "Cat"
                    : category == Category.DOG
                        ? "Dog"
                        : "Bunny") +
            " Category",
        context: context,
      ),
      body: Body(
        category: category,
      ),
    );
  }
}
