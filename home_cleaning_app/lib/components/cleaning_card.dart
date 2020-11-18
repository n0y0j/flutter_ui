import 'package:flutter/material.dart';
import 'package:home_cleaning_app/constants.dart';

class CleaningCard extends StatelessWidget {
  const CleaningCard({
    Key key,
    @required this.selectedType,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final String selectedType;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width * 0.43,
            decoration: BoxDecoration(
              color: Color(0xffdfdeff),
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
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
          )
        ],
      ),
    );
  }
}
