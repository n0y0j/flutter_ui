import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/app_bar.dart';
import 'package:home_cleaning_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: buildAppBar(),
    );
  }
}
