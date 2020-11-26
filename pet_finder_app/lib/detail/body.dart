import 'package:flutter/material.dart';
import 'package:pet_finder_app/data.dart';
import 'package:pet_finder_app/detail/components/home_image.dart';
import 'package:pet_finder_app/detail/components/pet_feature.dart';
import 'package:pet_finder_app/detail/components/pet_story.dart';
import 'package:pet_finder_app/detail/components/post_user.dart';

class Body extends StatelessWidget {
  final Pet pet;
  Body({@required this.pet});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DetailImage(pet: pet),
        PetFeature(pet: pet),
        PetStory(),
        PostUser(),
      ],
    );
  }
}
