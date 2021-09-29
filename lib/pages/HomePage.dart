import 'file:///C:/Users/hi/Desktop/all/flower_app/lib/material/models/constColors.dart';
import 'package:flower_app/material/models/constCategoryList.dart';
import 'package:flower_app/material/models/constText.dart';
import 'package:flower_app/material/models/modelsFlower.dart';
import 'package:flower_app/widget/categoryContainerWidget.dart';
import 'package:flower_app/widget/mainContainerWithFlowers.dart';
import 'package:flower_app/widget/searchContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<CategoryList>(context);
    final flowersData = Provider.of<ProductFlowerProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          sFlowersTitle,
                          style: GoogleFonts.amarante(
                              fontSize: 45, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      sFlowersSubTitle,
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: kSubTileColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchContainer(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...categoryData.list
                              .map((e) => CategoryContainerWidget(
                                    titleCategory: e,
                                  ))
                              .toList(),
                        ],
                      ),
                    ),
                    Container(
                      height: 450,
                      child: GridView.builder(
                          padding: EdgeInsets.all(10),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: (200 / 300),
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                          ),
                          shrinkWrap: true,
                          itemCount: flowersData.items.length,
                          itemBuilder: (context, index) =>
                              ChangeNotifierProvider.value(
                                  value: flowersData.items[index],
                                  child: MainContainerWithFlowers())),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
