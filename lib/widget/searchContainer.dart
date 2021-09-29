import 'file:///C:/Users/hi/Desktop/all/flower_app/lib/material/models/constColors.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatefulWidget {
  @override
  _SearchContainerState createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          IconButton(
              icon: Icon(Icons.search),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {}),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              enableSuggestions: false,
              autocorrect: false,
              cursorColor: kSubTileColor,
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintStyle: TextStyle(fontSize: 17),
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
