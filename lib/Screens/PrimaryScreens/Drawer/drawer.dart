import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

Widget drawer(BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Image.asset(
          "assets/Profile.png",
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
          top: 160,
          left: 330,
          child: Text(
            "01/23",
            style: GoogleFonts.exo2(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          )),
      Positioned(
          top: 210,
          left: 60,
          child: Row(
            children: <Widget>[
              Text(
                "Balance",
                style: GoogleFonts.exo2(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  "assets/icons/ECoin.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          )),
      Positioned(
          top: 270,
          left: 60,
          child: Text(
            "QAR 120",
            style: GoogleFonts.exo2(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          )),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          minRadius: 40,
                          backgroundImage: AssetImage("assets/icons/user.png")),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Ahmed",
                        style: GoogleFonts.exo2(
                            fontSize: 30,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 190,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ADDRESS_SCREEN);
                      },
                      child: button("My Address ", "assets/icons/address.png")),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, PROFILE_SCREEN);
                      },
                      child: button("My Profile  ", "assets/icons/user.png")),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ORDER_SCREEN);
                      },
                      child: button("My Orders ", "assets/icons/orders.png")),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SETTINGS_SCREEN);
                      },
                      child:
                          button("Settings     ", "assets/icons/seeting.png")),
                  SizedBox(
                    height: 50,
                  ),
                  button("Logout       ", "assets/icons/logout.png"),
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget button(String name, String icon) {
  return Row(
    children: <Widget>[
      SizedBox(
        width: 30,
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
            padding: const EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Image.asset(
                  icon,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: GoogleFonts.exo2(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}
