import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/models/User.dart';
import 'package:travel_app/size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelSpot,
    @required this.press,
    this.isFullCard = false,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;
  final bool isFullCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 168 : 137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard ? 1.33 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: AssetImage(travelSpot.image),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [kDefaultShadow],
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isFullCard ? 17 : 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (isFullCard)
                  Text(
                    travelSpot.date.day.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                if (isFullCard)
                  Text(DateFormat.MMMM().format(travelSpot.date).toString() +
                      " " +
                      travelSpot.date.year.toString()),
                SizedBox(
                  height: 10,
                ),
                Travelers(
                  users: travelSpot.users,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelerFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenHeight(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

ClipOval buildTravelerFace(int index) {
  return ClipOval(
    child: Image.asset(
      users[index].image,
      height: getProportionateScreenHeight(28),
      width: getProportionateScreenWidth(28),
      fit: BoxFit.cover,
    ),
  );
}
