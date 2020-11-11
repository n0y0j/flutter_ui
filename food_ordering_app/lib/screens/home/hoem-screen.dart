import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/components/app_bar.dart';
import 'package:food_ordering_app/screens/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: Body(),
    );
  }
}
