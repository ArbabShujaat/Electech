import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class EmailSent extends StatefulWidget {
  @override
  _EmailSentState createState() => _EmailSentState();
}

class _EmailSentState extends State<EmailSent> {
  bool loginLoading = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Image.asset(
              "assets/Email Sent.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 30,
              left: 20,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, color: Colors.white))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: height / 2.5,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacementNamed(
                            context, LOGIN_SCREEN),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  child: Center(
                                    child: Text(
                                      'Back to login',
                                      style: GoogleFonts.exo2(
                                          fontSize: 18,
                                          color: Hexcolor("#6A6DFF"),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Hexcolor("#F2F2F5"),

                                      // color:Colors.g
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0, 0.1),
                                            offset: Offset(6, 2),
                                            blurRadius: 6.0,
                                            spreadRadius: 3.0),
                                        BoxShadow(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.9),
                                            offset: Offset(-6, -2),
                                            blurRadius: 6.0,
                                            spreadRadius: 3.0)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
