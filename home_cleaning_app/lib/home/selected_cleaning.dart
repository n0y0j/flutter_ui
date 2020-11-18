import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/cleaning_card.dart';

class SelectedCleaning extends StatelessWidget {
  const SelectedCleaning({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Selected Cleaning",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CleaningCard(
                  selectedType: "initial",
                  title: "Initial Cleaning",
                  image: "assets/images/img1.png",
                ),
                CleaningCard(
                  selectedType: "upkeep",
                  title: "Upkeep Cleaning",
                  image: "assets/images/img2.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
