import 'package:flutter/material.dart';
import 'package:pet_finder_app/data.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({
    Key key,
    @required this.pet,
  }) : super(key: key);

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Hero(
            tag: pet.imageUrl,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pet.imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
