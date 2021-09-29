import 'package:flower_app/material/models/constColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainerWidget extends StatefulWidget {
  final String titleCategory;

  CategoryContainerWidget({this.titleCategory});

  @override
  _CategoryContainerWidgetState createState() =>
      _CategoryContainerWidgetState(titleCategory: titleCategory);
}

class _CategoryContainerWidgetState extends State<CategoryContainerWidget> {
  bool isFocus = false;

  final String titleCategory;
  _CategoryContainerWidgetState({this.titleCategory});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFocus = !isFocus;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
        width: 90,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isFocus ? kCategoryIsFocus : kBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          titleCategory,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            color: isFocus ? kBackgroundColor : kCategoryIsFocus,
          ),
        ),
      ),
    );
  }
}
