import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Payment1 extends StatefulWidget {
  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int value = 0;

    return Scaffold(
      body: Container(
        color: Hexcolor("#F2F2F5"),
        child: Column(
          children: <Widget>[
            CustomAppBarBackButton(),
            SizedBox(
              height: 20,
            ),
            Text(
              'ADD YOUR CARD',
              style: GoogleFonts.exo2(
                  fontSize: 22,
                  color: Hexcolor("#6A6DFF"),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/Mastercard.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/VISA CARD.png",
                  height: 100,
                  width: 100,
                ),
              ],
            ),
            Text(
              'CARD DETAILS',
              style: GoogleFonts.exo2(
                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text(
                    '    Card Number',
                    style: GoogleFonts.exo2(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(6, 2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            offset: Offset(-6, -2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0)
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  child: Text(
                    '    Name on card',
                    style: GoogleFonts.exo2(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600),
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(6, 2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            offset: Offset(-6, -2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0)
                      ]),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pushNamed(context, ADDRESS_SCREEN),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, top: 20, bottom: 20, right: 15),
                          child: Center(
                            child: Text(
                              '        MM/YYYY       ',
                              style: GoogleFonts.exo2(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Hexcolor("#F2F2F5"),

                              // color:Colors.g
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    offset: Offset(6, 2),
                                    blurRadius: 6.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                    color: Color.fromRGBO(255, 255, 255, 0.9),
                                    offset: Offset(-6, -2),
                                    blurRadius: 6.0,
                                    spreadRadius: 3.0)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, ADDRESS_SCREEN),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, top: 20, bottom: 20, right: 15),
                          child: Center(
                            child: Text(
                              '                 CVC                 ',
                              style: GoogleFonts.exo2(
                                  fontSize: 14,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Hexcolor("#F2F2F5"),

                              // color:Colors.g
                              borderRadius: BorderRadius.circular(100.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    offset: Offset(6, 2),
                                    blurRadius: 6.0,
                                    spreadRadius: 3.0),
                                BoxShadow(
                                    color: Color.fromRGBO(255, 255, 255, 0.9),
                                    offset: Offset(-6, -2),
                                    blurRadius: 6.0,
                                    spreadRadius: 3.0)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Radio(
                  groupValue: 1,
                  value: 1,
                  onChanged: (a) {},
                  activeColor: Hexcolor("#6A6DFF"),
                ),
                Text(
                  'Save this card',
                  style: GoogleFonts.exo2(
                      fontSize: 14,
                      color: Hexcolor("#6A6DFF"),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, PAYMENT_2);
                  },
                  child: Container(
                    width: 350,
                    padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: GoogleFonts.exo2(
                            fontSize: 18,
                            color: Hexcolor("#6A6DFF"),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Hexcolor("#F2F2F5"),

                        // color:Colors.g
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              offset: Offset(6, 2),
                              blurRadius: 6.0,
                              spreadRadius: 3.0),
                          BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.9),
                              offset: Offset(-6, -2),
                              blurRadius: 6.0,
                              spreadRadius: 3.0)
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBarBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        height: height / 10,
        width: width,
        padding: EdgeInsets.only(left: 15, top: 25),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(4, 0.0),
              colors: [
                Hexcolor("#6A6DFF"),
                Hexcolor("#9019FF"),
              ]),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
              // onPressed: () => _scaffoldKey.currentState.openDrawer(),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(4, 0.0),
                      colors: [
                        Hexcolor("#6A6DFF"),
                        Hexcolor("#9019FF"),
                      ]),
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        offset: Offset(6, 2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0),
                    BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.09),
                        offset: Offset(-6, -2),
                        blurRadius: 6.0,
                        spreadRadius: 3.0)
                  ]),
              child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Image.asset(
                    "assets/iconText.png",
                    height: 40,
                    width: 150,
                  )),
            ),
            IconButton(
                icon: Icon(AntDesign.search1, color: Colors.white),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
