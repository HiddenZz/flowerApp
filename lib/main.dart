import 'package:flower_app/material/models/cartModels.dart';
import 'package:flower_app/pages/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'material/models/constCategoryList.dart';
import 'material/models/modelsFlower.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CategoryList>(
            create: (context) => CategoryList()),
        ChangeNotifierProvider<ProductFlowerProvider>(
            create: (context) => ProductFlowerProvider()),
        ChangeNotifierProvider<CartDataProvider>(
          create: (context) => CartDataProvider(),
        )
      ],
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}
