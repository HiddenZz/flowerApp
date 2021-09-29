import 'package:flower_app/material/models/cartModels.dart';
import 'package:flower_app/material/models/constColors.dart';
import 'package:flower_app/pages/MainPage.dart';
import 'package:flower_app/widget/cardBuyOnCartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  final bool bool1;

  CartPage({Key key, this.bool1 = false}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState(bool1);
}

class _CartPageState extends State<CartPage> {
  final bool _bool1;
  _CartPageState(this._bool1);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartDataProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: SvgPicture.asset(
                            "assets/icons/back.svg",
                            width: 30,
                            color: kSubTileColor,
                          ),
                          onPressed: () => _bool1
                              ? Navigator.pop(context)
                              : Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MainPage()))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Text("Shopping",
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black, fontSize: 30)),
                              subtitle: Text(
                                "Cart",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          IconButton(
                              icon: SvgPicture.asset(
                                "assets/icons/trash2.svg",
                              ),
                              onPressed: () {
                                setState(() {
                                  cartProvider.clear();
                                });
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: CardBuyOnCartPage(
                cardData: cartProvider,
              )),
              Container(
                margin: EdgeInsets.only(bottom: 20, right: 40, left: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'items ${cartProvider.cartItemsCount}',
                        style: textHistory,
                      ),
                      Text(
                        '\$ ${cartProvider.totalAmount}',
                        style: priceOnShoppingCart,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
