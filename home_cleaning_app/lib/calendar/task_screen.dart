import 'package:flutter/material.dart';
import 'package:home_cleaning_app/components/task_widget.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "21 November 2020",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  dayTask("10 am", "Michael Hamilton", "Upkeep Cleaning", 3,
                      "\$50"),
                  dayTask("11 am", "Alexandra Johnson", "Initial Cleaning", 5,
                      "\$30"),
                  dayTask(
                      "2 pm", "Chris Hemsworth", "Upkeep Cleaning", 2, "\$50"),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
