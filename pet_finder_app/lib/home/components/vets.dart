import 'package:flutter/material.dart';
import 'package:pet_finder_app/components/vet_widget.dart';

class Vets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16, left: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Vets Near You",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[800],
              )
            ],
          ),
        ),
        Container(
          height: 130,
          margin: EdgeInsets.only(bottom: 16),
          child: PageView(
            physics: BouncingScrollPhysics(),
            children: [
              buildVet("assets/images/vets/vet_0.png",
                  "Animal Emergency Hospital", "(369) 133-8956"),
              buildVet("assets/images/vets/vet_1.png",
                  "Artemis Veterinary Center", "(706) 722-9159"),
              buildVet("assets/images/vets/vet_2.png", "Big Lake Vet Hospital",
                  "(598) 4986-9532"),
              buildVet("assets/images/vets/vet_3.png",
                  "Veterinary Medical Center", "(33) 8974-559-555"),
            ],
          ),
        )
      ],
    );
  }
}
