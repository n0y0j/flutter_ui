import 'package:flutter/material.dart';
import 'package:pet_finder_app/category/category_list.dart';
import 'package:pet_finder_app/data.dart';

Widget buildPetCategory(
    Category category, String total, Color color, BuildContext context) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryList(
                      category: category,
                    )));
      },
      child: Container(
        height: 80,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[200],
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color.withOpacity(0.5),
              ),
              child: Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    "assets/images/" +
                        (category == Category.HAMSTER
                            ? "hamster"
                            : category == Category.CAT
                                ? "cat"
                                : category == Category.BUNNY
                                    ? "bunny"
                                    : "dog") +
                        ".png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  category == Category.HAMSTER
                      ? "Hamsters"
                      : category == Category.CAT
                          ? "Cats"
                          : category == Category.BUNNY
                              ? "Bunnies"
                              : "Dogs",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Total of " + total,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
