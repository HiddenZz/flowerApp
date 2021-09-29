import 'package:flower_app/material/models/cartModels.dart';
import 'package:flower_app/material/models/constColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBuyOnCartPage extends StatelessWidget {
  final CartDataProvider cardData;
  final int index;
  CardBuyOnCartPage({this.cardData, this.index});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardData.cartItemsCount,
      itemBuilder: (context, index) {
        return Container(
          height: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            cardData.cartItems.values.toList()[index].imgUrl),
                        fit: BoxFit.cover)),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(right: 30),
                width: 150,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        cardData.cartItems.values.toList()[index].title,
                        style: titleOnShoppingCart,
                      ),
                    ),
                    subtitle: Text(
                      '\$ ${(cardData.cartItems.values.toList()[index].price * cardData.cartItems.values.toList()[index].number).toStringAsFixed(2)}',
                      style: priceOnShoppingCart,
                    ),
                  ),
                ),
              ),
              Container(
                height: 130,
                margin: EdgeInsets.all(10),
                alignment: Alignment.topCenter,
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black12,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'x${cardData.cartItems.values.toList()[index].number}',
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
