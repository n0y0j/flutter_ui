import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/components/home_header.dart';

import 'popular_places.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 50),
          PopularPlaces(),
        ],
      ),
    );
  }
}
