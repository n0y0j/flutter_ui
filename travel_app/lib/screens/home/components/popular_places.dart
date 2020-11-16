import 'package:flutter/material.dart';
import 'package:travel_app/components/place_card.dart';
import 'package:travel_app/components/section_title.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTitle(
        title: "Right Now At Spark",
        press: () {},
      ),
      SizedBox(height: 20),
      SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ...List.generate(
            travelSpots.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
              ),
              child: PlaceCard(
                travelSpot: travelSpots[index],
                press: () {},
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          )
        ]),
      ),
    ]);
  }
}
