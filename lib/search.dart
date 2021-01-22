import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      // color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 45),
              buildSearchField(),
              SizedBox(width: 10),
              buildSearchButton(),
            ],
          ),
        ],
      ),
    );
  }

  Container buildSearchField() {
    return Container(
      height: 30,
      width: 250,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF34495E)),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF34495E)),
            borderRadius: BorderRadius.circular(5),
          ),
          hintText: "search..",
          hintStyle: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ), 
    );
  }

  Container buildSearchButton() {
    return Container(
      height: 30,
      width: 60,
      child: RaisedButton(
        color: Color(0xFF34495E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text("search",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        onPressed: () {}, 
      ),
    );
  }
}