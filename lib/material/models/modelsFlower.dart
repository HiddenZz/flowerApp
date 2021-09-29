import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ModelsFlower with ChangeNotifier {
  final String id;
  final String title;
  final num price;
  final String family;
  final String native;
  final String image;
  final color;
  final String taxonomicHistory;
  final List<String> images;

  ModelsFlower(
      {this.images,
      @required this.id,
      @required this.color,
      @required this.title,
      @required this.image,
      @required this.price,
      @required this.family,
      @required this.native,
      this.taxonomicHistory});
}

class ProductFlowerProvider with ChangeNotifier {
  List<ModelsFlower> _items = [
    ModelsFlower(
        id: 'f1',
        title: "Gazinia",
        price: 4.32,
        color: Color(0xff79720b),
        family: "Asteraceae",
        native: "Southern Africa",
        image: "assets/images/Gazinia1.jpg",
        images: [
          "assets/images/Gazinia1.jpg",
          "assets/images/Gazinia2.jpg",
          "assets/images/Gazinia3.jpg"
        ],
        taxonomicHistory:
            "The genus was first formally described by German botanist Joseph Gaertner in the second volume of his major work De Fructibus et Seminibus Plantarum  in 1791. Gaertner named the genus after Theodorus Gaza, a 15th-century translator of the works of Theophrastus. Gazania is a member of the tribe Arctotideae and the subtribe Gorteriinae. Within the subtribe it is close to Hirpicium and Gorteria.[10] Many of the species of Gazania are hard to distinguish and the number of species assigned to the genus has varied widely from one author to another."),
    ModelsFlower(
        id: 'f2',
        title: "Rudbeck",
        image: "assets/images/Rudbeck1.jpg",
        price: 5.23,
        color: Color(0xff5f1303),
        family: "Asteraceae",
        native: "North American",
        images: [
          "assets/images/Rudbeck1.jpg",
          "assets/images/Rudbeck2.jpg",
          "assets/images/Rudbeck3.jpg"
        ]),
    ModelsFlower(
        id: 'f3',
        title: "Scale",
        image: "assets/images/scale1.jpg",
        price: 3.12,
        color: Color(0xff43436c),
        family: "Asteraceae",
        native: "Russia",
        images: [
          "assets/images/scale1.jpg",
          "assets/images/scale2.jpg",
          "assets/images/scale3.jpg"
        ]),
    ModelsFlower(
        id: 'f1',
        title: "Gazinia",
        price: 4.32,
        color: Color(0xffffeb69),
        family: "Asteraceae",
        native: "Southern Africa",
        image: "assets/images/Gazinia1.jpg",
        images: [
          "assets/images/Gazinia1.jpg",
          "assets/images/Gazinia2.jpg",
          "assets/images/Gazinia3.jpg"
        ]),
    ModelsFlower(
        id: 'f2',
        title: "Rudbeck",
        image: "assets/images/Rudbeck1.jpg",
        price: 5.23,
        color: Color(0xff781501),
        family: "Asteraceae",
        native: "North American",
        images: [
          "assets/images/Rudbeck1.jpg",
          "assets/images/Rudbeck2.jpg",
          "assets/images/Rudbeck3.jpg"
        ]),
    ModelsFlower(
        id: 'f3',
        title: "Scale",
        image: "assets/images/scale1.jpg",
        price: 3.12,
        color: Color(0xff43436c),
        family: "Asteraceae",
        native: "Russia",
        images: [
          "assets/images/scale1.jpg",
          "assets/images/scale2.jpg",
          "assets/images/scale3.jpg"
        ])
  ];

  UnmodifiableListView<ModelsFlower> get items => UnmodifiableListView(_items);

  ModelsFlower getElementById(String id) =>
      _items.singleWhere((element) => element.id == id);
}
