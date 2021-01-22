import 'package:flutter/material.dart';

class DropDownList extends StatefulWidget {

  DropDownList({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DropDownListState createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {

  String valueChoose;
  List listMonth = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  List listYear = [
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 500,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 45,),
              Text("month"),
              SizedBox(width: 110,),
              Text("year"),
              SizedBox(width: 110,),
              Text("team"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildDropDownMonth(),
              SizedBox(width: 20,),
              buildDropDownYear(),
              SizedBox(width: 20,),
              buildDropDownMonth(),
            ],
          ),
        ],
      ),
    );
  }

  Container buildDropDownMonth() {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF34495E), width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        hint: Text(
          "select month",
          style: TextStyle(color: Colors.black),
        ),
        style: TextStyle(color: Colors.black),
        // icon: Icon(Icons.arrow_drop_down),
        iconEnabledColor: Color(0xFF34495E),
        underline: SizedBox(),
        value: valueChoose,
        onChanged: (newValue) {
          setState(() {
            valueChoose = newValue;
          });
        },
        items: listMonth.map((valueMonth) {
          return DropdownMenuItem(
            value: valueMonth,
            child: Text(valueMonth),
          );
        }).toList(),
      ),
    );
  }

  Container buildDropDownYear() {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF34495E), width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        hint: Text(
          "select year",
          style: TextStyle(color: Colors.black),
        ),
        style: TextStyle(color: Colors.black),
        // icon: Icon(Icons.arrow_drop_down),
        iconEnabledColor: Color(0xFF34495E),
        underline: SizedBox(),
        value: valueChoose,
        onChanged: (newValue) {
          setState(() {
            valueChoose = newValue;
          });
        },
        items: listYear.map((valueYear) {
          return DropdownMenuItem(
            value: valueYear,
            child: Text(valueYear),
          );
        }).toList(),
      ),
    );
  }

}