import 'package:flutter/material.dart';
import 'package:snack_demo/widgets/navbar.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 200,
      color: Color(0xFF34495E),
      child: Stack(
        children: [
          NavBar(),
        ],
      ),
    );
  }
}
