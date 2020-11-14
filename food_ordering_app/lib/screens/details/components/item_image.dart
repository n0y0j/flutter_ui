import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imaSrc;
  const ItemImage({
    Key key,
    this.imaSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imaSrc,
      height: size.height * 0.25,
      // it cover the 25% of total height
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
