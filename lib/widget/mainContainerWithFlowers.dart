import 'package:flower_app/material/models/constColors.dart';
import 'package:flower_app/material/models/modelsFlower.dart';
import 'package:flower_app/pages/BuyFlowersPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainContainerWithFlowers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final flowersData = Provider.of<ModelsFlower>(context, listen: false);
    final num price = flowersData.price;
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => InfoPageFlower(flowers: flowersData),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            margin: EdgeInsets.only(bottom: 11),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(flowersData.image),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            flowersData.title,
            style: GoogleFonts.montserrat(
              fontSize: 15,
              color: kCategoryIsFocus,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  color: kCategoryIsFocus,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              children: [
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: SvgPicture.asset(
                      "assets/icons/dollar.svg",
                      height: 14,
                    ),
                  ),
                ),
                TextSpan(text: '$price'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
