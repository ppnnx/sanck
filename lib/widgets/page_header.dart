import 'package:flutter/material.dart';
import 'custom_text.dart';

class PageHeader extends StatelessWidget {
  final String text;

  const PageHeader({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20, height: 30,),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: CustomText(text: text, size: 34, weight: FontWeight.bold, color: Color(0xFF34495E),),
        ),
      ],
    );
  }
}