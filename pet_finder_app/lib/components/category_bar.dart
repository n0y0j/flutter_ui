import 'package:flutter/material.dart';

AppBar buildCategoryAppbar({String name, BuildContext context}) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      name,
      style: TextStyle(
        color: Colors.grey[800],
      ),
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: Colors.grey[800],
      ),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: Icon(
          Icons.notifications_none,
          color: Colors.grey[800],
        ),
      ),
    ],
  );
}
