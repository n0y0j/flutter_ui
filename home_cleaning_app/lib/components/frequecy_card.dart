import 'package:flutter/material.dart';
import 'package:home_cleaning_app/constants.dart';

class FrequecyCard extends StatefulWidget {
  @override
  _FrequecyCardState createState() => _FrequecyCardState();
}

class _FrequecyCardState extends State<FrequecyCard> {
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            changeFrequency("weekly");
          },
          child: Container(
            height: 50,
            width: 110,
            decoration: (selectedFrequency == "weekly")
                ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  )
                : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "Weekly",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: (selectedFrequency == "weekly")
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            changeFrequency("bi-weekly");
          },
          child: Container(
            height: 50,
            width: 110,
            decoration: (selectedFrequency == "bi-weekly")
                ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  )
                : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "Bi-weekly",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: (selectedFrequency == "bi-weekly")
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            changeFrequency("monthly");
          },
          child: Container(
            height: 50,
            width: 110,
            decoration: (selectedFrequency == "monthly")
                ? BoxDecoration(
                    color: pink,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  )
                : BoxDecoration(
                    border: Border.all(color: Colors.black.withOpacity(0.3)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "Monthly",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: (selectedFrequency == "monthly")
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }

  void changeFrequency(String frequency) {
    setState(() {
      selectedFrequency = frequency;
    });
  }
}
