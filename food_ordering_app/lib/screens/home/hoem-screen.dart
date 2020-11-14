import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/bottom_nav_bar.dart';
import 'package:food_ordering_app/screens/components/app_bar.dart';
import 'package:food_ordering_app/screens/components/body.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      appBar: homeAppbar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
