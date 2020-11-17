import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar.dart';
import 'package:travel_app/components/custom_nav_bar.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "New Events"),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
