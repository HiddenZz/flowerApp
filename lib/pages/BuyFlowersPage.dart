import 'package:flower_app/material/models/constColors.dart';
import 'package:flower_app/material/models/modelsFlower.dart';
import 'package:flower_app/pages/CartPage.dart';
import 'package:flower_app/widget/BuyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'DetailsInfoOnFlowers.dart';

class InfoPageFlower extends StatelessWidget {
  final ModelsFlower flowers;
  const InfoPageFlower({Key key, this.flowers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          GestureDetector(
            onDoubleTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => DetailsInfoOnFlowers(
                        flower: flowers,
                      )),
            ),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(flowers.image),
                          fit: BoxFit.fitHeight)),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height - 500,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(17, 11, 20, 1),
                              Color.fromRGBO(17, 11, 20, 0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(30),
                            child:
                                Text(flowers.title, style: flowersStyleTitle),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      "Native".toUpperCase(),
                                      style: titleBuyPage,
                                    ),
                                    subtitle: Container(
                                      padding: EdgeInsets.only(top: 6),
                                      child: Text(
                                        flowers.native,
                                        style: subTitleBuyPage,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: ListTile(
                                      title: Text(
                                        "Family".toUpperCase(),
                                        style: titleBuyPage,
                                      ),
                                      subtitle: Container(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Text(
                                          flowers.family,
                                          style: subTitleBuyPage,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.transparent,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BuyButton(flowers),
                        SizedBox(
                          width: 10,
                        ),
                        Text("\$${flowers.price}", style: textTitleStyle),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CartPage(
                              bool1: true,
                            ))),
                    child: Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(right: 30),
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kRedObjectColor),
                      child: SvgPicture.asset(
                        "assets/icons/cart2.svg",
                        color: kBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
