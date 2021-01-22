import 'package:flutter/material.dart';
import 'package:snack_demo/board.dart';
import 'package:snack_demo/button/confirm_button.dart';
import 'package:snack_demo/dropdown/dropdown_list.dart';
import 'package:snack_demo/search.dart';
import 'package:snack_demo/side_bar.dart';
import 'package:snack_demo/widgets/page_header.dart';
// import 'package:snack_demo/testja.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        PageHeader(text: 'Purchase Orders'),
                        SizedBox(height: 10),
                        DropDownList(),
                        SearchBar(),
                        ConfirmButton(),
                        SizedBox(height: 10),
                        BoardScreen(),
                      ],
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