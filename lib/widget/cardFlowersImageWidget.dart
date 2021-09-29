import 'package:flutter/material.dart';

class CardFlowersImageWidget extends StatelessWidget {
  final String image;
  final color;
  CardFlowersImageWidget({this.image, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              spreadRadius: 0.5,
              offset: Offset(0, 6),
              color: Colors.black54,
            ),
          ]),
    );
  }
}
