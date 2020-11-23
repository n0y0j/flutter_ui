import 'package:flutter/material.dart';

AppBar buildAppbar() {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Icon(
      Icons.sort,
      color: Colors.grey[800],
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
