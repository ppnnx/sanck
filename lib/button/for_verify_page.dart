import 'package:flutter/material.dart';

class ConfirmSelectedButton extends StatefulWidget {
  @override
  _ConfirmSelectedButtonState createState() => _ConfirmSelectedButtonState();
}

class _ConfirmSelectedButtonState extends State<ConfirmSelectedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1200,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 970),
          Container(
            height: 30,
            width: 200,
            child: RaisedButton(
              onPressed: () {},
              child: Text("Confirm Selected Products",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              // disabledColor: Colors.grey[800],
              color: Color(0xFF34495E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
