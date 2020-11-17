import 'package:flutter/material.dart';
import 'package:travel_app/components/place_card.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSpot: travelSpots[index],
                    isFullCard: true,
                    press: () {},
                  ),
                ),
                Container(
                    height: getProportionateScreenHeight(330),
                    width: getProportionateScreenWidth(168),
                    decoration: BoxDecoration(
                      color: Color(0xFF6A6C93).withOpacity(0.09),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFEBE8F6),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: getProportionateScreenHeight(53),
                          width: getProportionateScreenWidth(53),
                          child: FlatButton(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                            color: kPrimaryColor,
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: getProportionateScreenWidth(35),
                            ),
                          ),
                        ),
                        VerticalSpacing(of: 10),
                        Text(
                          "Add New Place",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
