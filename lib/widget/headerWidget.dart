import 'package:flower_app/material/models/constColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldState;
  const HeaderWidget(Key key, this._scaffoldState) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //menu
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/menu2.svg",
                width: 30,
                color: kIconColor,
              ),
              onPressed: () {
                _scaffoldState.currentState.openDrawer();
              }),
         
        ],
      ),
    );
  }
}
