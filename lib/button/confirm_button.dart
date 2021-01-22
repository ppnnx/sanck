import 'package:flutter/material.dart';

class ConfirmButton extends StatefulWidget {
  @override
  _ConfirmButtonState createState() => _ConfirmButtonState();
}

class _ConfirmButtonState extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1200,
      // color: Colors.yellow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 45),
          Container(
            height: 30,
            width: 140,
            child: OutlineButton(
              borderSide: BorderSide(
                color: Colors.black,
                // width: 1,
                // style: BorderStyle.solid,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text("TBC"),
              textColor: Colors.black,
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 30,
            width: 140,
            child: RaisedButton(
              onPressed: () {},
              child: Text("Confirmed",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
              disabledColor: Colors.grey[800],
              // color: Color(0xFF34495E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(width: 650),
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
