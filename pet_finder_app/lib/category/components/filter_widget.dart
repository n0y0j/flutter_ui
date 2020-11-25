import 'package:flutter/material.dart';

Widget buildFilter(String name, bool selected) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
        color: selected ? Colors.blue[300] : Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          width: 1,
          color: selected ? Colors.transparent : Colors.grey[300],
        ),
        boxShadow: [
          BoxShadow(
            color: selected ? Colors.blue[300].withOpacity(0.5) : Colors.white,
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 0),
          )
        ]),
    child: Row(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: selected ? Colors.white : Colors.black,
          ),
        ),
        selected
            ? Row(
                children: [
                  SizedBox(width: 8),
                  Icon(Icons.clear, color: Colors.white, size: 18),
                ],
              )
            : Container(),
      ],
    ),
  );
}
