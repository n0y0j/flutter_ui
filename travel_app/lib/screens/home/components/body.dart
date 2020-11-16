import 'package:flutter/material.dart';
import 'package:travel_app/screens/home/components/home_header.dart';

import 'popular_places.dart';
import 'top_traverlers.dart';

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
          SizedBox(height: 30),
          TopTravelers(),
        ],
      ),
    );
  }
}
