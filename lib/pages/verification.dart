import 'package:flutter/material.dart';
import 'package:snack_demo/board.dart';
import 'package:snack_demo/button/for_verify_page.dart';
import 'package:snack_demo/dropdown/dropdown_team.dart';
import 'package:snack_demo/search.dart';
import 'package:snack_demo/side_bar.dart';
import 'package:snack_demo/widgets/page_header.dart';

class VerifyPage extends StatefulWidget {
  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Stack(
                children: [
                  SideBar(),
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PageHeader(text: 'Verification'),
                    SizedBox(height: 10),
                    DropDownTeam(),
                    SizedBox(height: 10),
                    SearchBar(),
                    ConfirmSelectedButton(),
                    BoardScreen(),
                  ],
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}