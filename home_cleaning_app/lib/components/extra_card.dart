import 'package:flutter/material.dart';
import 'package:home_cleaning_app/constants.dart';

Column ExtraCard(String img, String name, bool isSelected) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: purple,
            ),
            child: Container(
              margin: EdgeInsets.all(17),
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/icons/$img.png")),
              ),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: (isSelected == true)
                  ? Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: pink,
                        ),
                      ),
                    )
                  : Container())
        ],
      ),
      SizedBox(height: 5),
      Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      )
    ],
  );
}
