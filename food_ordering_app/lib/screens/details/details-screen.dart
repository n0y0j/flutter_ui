import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/details/components/app_bar.dart';
import 'package:food_ordering_app/screens/details/components/item_image.dart';

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
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopName(name: "MacDonalds"),
        ],
      ),
    );
  }
}

Row shopName({String name}) {
  return Row(
    children: <Widget>[
      Icon(
        Icons.location_on,
        color: ksecondaryColor,
      ),
      SizedBox(width: 10),
      Text(name)
    ],
  );
}
