import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/details/components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imaSrc: "assets/images/burger.png",
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        )
      ],
    );
  }
}

class ItemImage extends StatelessWidget {
  final String imaSrc;
  const ItemImage({
    Key key,
    this.imaSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imaSrc,
      height: size.height * 0.25,
      // it cover the 25% of total height
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
