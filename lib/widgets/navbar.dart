import 'package:flutter/material.dart';
import 'package:snack_demo/pages/orders.dart';
import 'package:snack_demo/pages/transfer.dart';
import 'package:snack_demo/pages/verification.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
      height: MediaQuery.of(context).size.height,
      // color: Colors.pink,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            FlatButton(
              child: Text(
                "Dashboard",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                "User Management",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: (null),
            ),
            FlatButton(
              child: Text(
                "- verify",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => VerifyPage()));
              },
            ),
            FlatButton(
              child: Text(
                "   - wallets manage",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () {},
            ),
            FlatButton(
              child: Text(
                "Purchase Order",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => OrderPage()));
              },
            ),
            FlatButton(
              child: Text(
                "Transfer Order",
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => TransferPage()));
              },
            ),
            SizedBox(
              height: 400,
            ),
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  "Setting",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
