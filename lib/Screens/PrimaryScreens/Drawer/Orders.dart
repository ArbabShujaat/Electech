import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Image.asset(
              "assets/setting.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              })
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "My Orders",
                            style: GoogleFonts.exo2(
                                fontSize: 34,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      profilebutton(
                        "Full Name",
                        "Ahmed Abdullah",
                        AntDesign.lock,
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

  Widget profilebutton(String heading, String subHeading, IconData icon) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Hexcolor("#7A5DFF"),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.09),
                        offset: Offset(6, 2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.08),
                        offset: Offset(-6, -2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0)
                  ]),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 18, 8, 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, bottom: 4, right: 100),
                        child: Text(
                          "Order Number : 1200XYZ",
                          style: GoogleFonts.exo2(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, bottom: 4),
                                child: Text(
                                  "Date : 01/09/2020",
                                  style: GoogleFonts.exo2(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, bottom: 4),
                                child: Text(
                                  "Total Price : 120 QAR",
                                  style: GoogleFonts.exo2(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 4),
                            child: Text(
                              "    Completed",
                              style: GoogleFonts.exo2(
                                  fontSize: 18,
                                  color: Colors.green[400],
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget switchProfilebutton(String heading, String subHeading, IconData icon) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Container(
          decoration: BoxDecoration(
              color: Hexcolor("#7A5DFF"),
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment(4, 0.0),
              //     colors: [
              //       Hexcolor("#6A6DFF"),
              //       Hexcolor("#9019FF"),
              //     ]),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.09),
                    offset: Offset(6, 2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.08),
                    offset: Offset(-6, -2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0)
              ]),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 18, 8, 18),
              child: Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 4),
                        child: Text(
                          heading,
                          style: GoogleFonts.exo2(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        subHeading,
                        style: GoogleFonts.exo2(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.7,
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  )
                ],
              )),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
