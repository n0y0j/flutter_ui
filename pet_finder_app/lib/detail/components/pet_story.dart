import 'package:flutter/material.dart';

class PetStory extends StatelessWidget {
  const PetStory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            "Pet Story",
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            "Maine Coon cats aree known for their intelligence and playfulness, as well as their size. One of the largest breeds of domestic cats, they are lovingly referreds.",
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
