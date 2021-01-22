import 'package:flutter/material.dart';
import 'package:snack_demo/dropdown/dropdown_list.dart';
import 'package:snack_demo/pages/login.dart';
import 'package:snack_demo/pages/orders.dart';
import 'package:snack_demo/pages/verification.dart';
import 'package:snack_demo/search.dart';
import 'package:snack_demo/testja.dart';


void main() {
  runApp(Snack());
}

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerifyPage(),
    );
  }
}