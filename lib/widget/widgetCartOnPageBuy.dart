import 'package:flower_app/material/models/constColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetCartOnPageBuy extends StatefulWidget {
  @override
  _WidgetCartOnPageBuyState createState() => _WidgetCartOnPageBuyState();
}

class _WidgetCartOnPageBuyState extends State<WidgetCartOnPageBuy> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.only(right: 30),
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kRedObjectColor),
        child: SvgPicture.asset(
          "assets/icons/cart2.svg",
          color: kBackgroundColor,
        ),
      ),
    );
  }
}
