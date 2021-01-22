import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200.0,),
              Text("Login", 
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color(0xFF34495E),
                ),
              ),
              SizedBox(height: 30.0,),
              Container(
                height: 220,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0,),
                    Container(
                      width: 250,
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF34495E)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF41B883)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: "username",
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 250,
                      height: 35,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF34495E)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF41B883)),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          hintText: "password",
                            hintStyle: TextStyle(
                              fontSize: 12.0,
                            ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(20.0, 20.0, 40.0, 20.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text("forgot password", 
                    //         style: TextStyle(
                    //           color: Colors.orangeAccent[700],
                    //           fontSize: 12.0,
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 50.0,),
                    Container(
                      width: 100,
                      height: 30,
                      child: RaisedButton(
                        child: Text("Login", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                        color: Color(0xFF34495E),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        onPressed: () {
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}