import 'package:flutter/material.dart';
import 'package:home_cleaning_app/constants.dart';

class CleaningCard extends StatefulWidget {
  const CleaningCard({
    Key key,
  }) : super(key: key);

  @override
  _CleaningCardState createState() => _CleaningCardState();
}

class _CleaningCardState extends State<CleaningCard> {
  String selectedType = "initial";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            changeCleaningType("initial");
          },
          child: Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.43,
                decoration: BoxDecoration(
                  color: Color(0xffdfdeff),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img1.png"),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Initail Cleaning",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffededed),
                ),
                child: (selectedType == "initial")
                    ? Icon(
                        Icons.check_circle,
                        color: pink,
                        size: 30,
                      )
                    : Container(),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            changeCleaningType("upkeep");
          },
          child: Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width * 0.43,
                decoration: BoxDecoration(
                  color: Color(0xffdfdeff),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img2.png"),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Upkeep Cleaning",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffededed),
                ),
                child: (selectedType == "upkeep")
                    ? Icon(
                        Icons.check_circle,
                        color: pink,
                        size: 30,
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void changeCleaningType(String type) {
    setState(() {
      selectedType = type;
    });
  }
}
