import 'package:flutter/material.dart';
import 'package:pet_finder_app/components/detail_bar.dart';
import 'package:pet_finder_app/data.dart';
import 'package:pet_finder_app/detail/body.dart';

class PetDetail extends StatelessWidget {
  final Pet pet;
  PetDetail({@required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: buildDetailAppbar(),
      body: Body(pet: pet),
    );
  }
}
