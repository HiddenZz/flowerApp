import 'package:flower_app/material/models/constColors.dart';
import 'package:flower_app/material/models/constText.dart';
import 'package:flower_app/material/models/modelsFlower.dart';
import 'package:flower_app/widget/cardFlowersImageWidget.dart';
import 'package:flutter/material.dart';

class DetailsInfoOnFlowers extends StatelessWidget {
  final ModelsFlower flower;

  const DetailsInfoOnFlowers({Key key, this.flower}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20),
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height - 110,
              child: ListView(
                children: [
                  Text(
                    flower.title,
                    style: flowersStyleTitle2,
                  ),
                  Container(
                    width: 240,
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: flower.images.length,
                      itemBuilder: (context, index) => CardFlowersImageWidget(
                        image: flower.images[index],
                        color: flower.color,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    titleHistory,
                    style: textTitleStyle,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      flower.taxonomicHistory,
                      style: textHistory,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
