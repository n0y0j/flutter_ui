import 'package:flutter/material.dart';
import 'package:pet_finder_app/home/components/pet_category.dart';
import 'package:pet_finder_app/home/components/search_bar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [SearchBar(), PetCategory()],
      ),
    );
  }
}
