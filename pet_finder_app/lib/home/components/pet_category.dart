import 'package:flutter/material.dart';
import 'package:pet_finder_app/components/pet_category_widget.dart';
import 'package:pet_finder_app/data.dart';

class PetCategory extends StatelessWidget {
  const PetCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pet Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[800],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildPetCategory(
                      Category.HAMSTER, "56", Colors.orange[200], context),
                  buildPetCategory(
                      Category.CAT, "210", Colors.blue[200], context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildPetCategory(
                      Category.BUNNY, "90", Colors.green[200], context),
                  buildPetCategory(
                      Category.DOG, "310", Colors.red[200], context),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
