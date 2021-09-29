import 'package:flower_app/material/models/cartModels.dart';
import 'package:flower_app/material/models/constColors.dart';
import 'package:flower_app/material/models/modelsFlower.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuyButton extends StatelessWidget {
  final ModelsFlower _flowers;
  BuyButton(this._flowers);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CartDataProvider>(context, listen: false).addItem(
            productId: _flowers.id,
            price: _flowers.price,
            title: _flowers.title,
            imgUrl: _flowers.image);
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 80,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kRedObjectColor,
        ),
        child: Text(
          "From",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: kBackgroundColor,
          ),
        ),
      ),
    );
  }
}
