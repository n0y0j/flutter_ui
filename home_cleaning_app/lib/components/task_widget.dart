import 'package:flutter/material.dart';
import 'package:home_cleaning_app/constants.dart';

Row dayTask(String time, String name, String task, int count, String price) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.all(19),
        child: Text(
          time,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(20),
          color: Color(0xffdfdeff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: purple,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                task,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: purple,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "$time - 5 pm",
                    style: TextStyle(
                      color: purple,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "Client Rating",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 7),
                  starCount(count),
                ],
              ),
              SizedBox(height: 5),
              Container(
                height: 0.5,
                color: Colors.grey,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.call, color: purple),
                  SizedBox(width: 5),
                  Icon(Icons.mail_outline, color: purple),
                  Expanded(child: Container()),
                  Text(
                    price,
                    style: TextStyle(
                      color: purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}

Row starCount(int count) {
  List<Widget> result = new List();

  for (int i = 0; i < count; i++) {
    result.add(Icon(Icons.star));
  }

  return Row(children: result);
}
