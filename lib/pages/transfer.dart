import 'package:flutter/material.dart';
import 'package:snack_demo/board.dart';
import 'package:snack_demo/dropdown/dd_for_transfer.dart';
import 'package:snack_demo/search.dart';
import 'package:snack_demo/side_bar.dart';
import 'package:snack_demo/widgets/page_header.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
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
                    PageHeader(text: 'Transfer'),
                    SizedBox(height: 10),
                    DropDownYM(),
                    SizedBox(height: 10),
                    SearchBar(),
                    SizedBox(height: 50),
                    BoardScreen(),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}