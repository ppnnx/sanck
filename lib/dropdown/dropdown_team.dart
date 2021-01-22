import 'package:flutter/material.dart';

class DropDownTeam extends StatefulWidget {

  DropDownTeam({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DropDownTeamState createState() => _DropDownTeamState();
}

class _DropDownTeamState extends State<DropDownTeam> {

  String valueChoose;
  List listTeam = [
    "Team 1",
    "Team 2",
    "Team 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 45,),
              Text("team"),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 45,),
              buildDropDownTeam(),
            ],
          ),
        ],
      ),
    );
  }

  Container buildDropDownTeam() {
    return Container(
      height: 30,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF34495E), width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        hint: Text(
          "select team",
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
        items: listTeam.map((valueTeam) {
          return DropdownMenuItem(
            value: valueTeam,
            child: Text(valueTeam),
          );
        }).toList(),
      ),
    );
  }

}