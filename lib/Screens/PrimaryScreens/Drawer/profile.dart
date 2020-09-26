import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              "assets/My Profile.png",
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
                            "My Profile",
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
                        "    Ahmed Abdullah     ",
                        "assets/icons/user.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      profilebutton(
                        "Email Address",
                        "example@gmail.com",
                        "assets/icons/email.png",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      profilebutton(
                        "Phone Number",
                        "     +923319042434     ",
                        "assets/icons/call.png",
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

  Widget profilebutton(String heading, String subHeading, String icon) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  customicon(icon),
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
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 4),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 70.0,
                                right: 70,
                              ),
                              child: Text(
                                subHeading,
                                style: GoogleFonts.exo2(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
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
