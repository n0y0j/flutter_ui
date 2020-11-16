import 'package:flutter/material.dart';
import 'package:travel_app/size_config.dart';

import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          height: getProportionateScreenWidth(250),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(80),
            ),
            Text(
              "Travelers",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(73),
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 0.5,
              ),
            ),
            Text(
              "Travel Community App",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: SearchField(),
        )
      ],
    );
  }
}
