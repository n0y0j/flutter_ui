import 'package:flutter/material.dart';

Widget buildVet(String imageUrl, String name, String phone) {
  return Container(
    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 4),
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(25),
      ),
      border: Border.all(
        width: 1,
        color: Colors.grey[300],
      ),
    ),
    child: Row(
      children: [
        Container(
          height: 98,
          width: 98,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey[800],
                  size: 18,
                ),
                SizedBox(width: 8),
                Text(
                  phone,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Text(
                "OPEN - 24/7",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
