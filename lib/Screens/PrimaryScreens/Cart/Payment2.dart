import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Payment2 extends StatefulWidget {
  @override
  _Payment2State createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
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

            Text(
              'Checkout',
              style: GoogleFonts.exo2(
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Image.asset(
            //       "assets/Mastercard.png",
            //       height: 15,
            //       width: 15,
            //     ),
            //     SizedBox(
            //       width: 30,
            //     ),
            //     Image.asset(
            //       "assets/VISA CARD.png",
            //       height: 15,
            //       width: 15,
            //     ),
            //   ],
            // ),
            Text(
              'Select address and ',
              style: GoogleFonts.exo2(
                  fontSize: 14, color: Colors.red, fontWeight: FontWeight.w600),
            ),
            Text(
              'Payment Method',
              style: GoogleFonts.exo2(
                  fontSize: 14, color: Colors.red, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      customicon("assets/icons/clock.png"),
                      Column(
                        children: <Widget>[
                          Text(
                            '   Delivery Time',
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Hexcolor("#6A6DFF"),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '      Today',
                            style: GoogleFonts.exo2(
                                fontSize: 16,
                                color: Hexcolor("#6A6DFF"),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          customicon("assets/icons/address.png"),
                          Column(
                            children: <Widget>[
                              Text(
                                '     Delivery Adress',
                                style: GoogleFonts.exo2(
                                    fontSize: 18,
                                    color: Hexcolor("#6A6DFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Text(
                        'Adress Name: Ahmad Abdullah',
                        style: GoogleFonts.exo2(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Area: Al Dafnah',
                        style: GoogleFonts.exo2(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Street: Al Waab Street',
                        style: GoogleFonts.exo2(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        ' House/Building: 58',
                        style: GoogleFonts.exo2(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Phone Number: 03319042434',
                        style: GoogleFonts.exo2(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/VISA CARD.png",
                        height: 65,
                        width: 65,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '     Credit Card',
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Hexcolor("#6A6DFF"),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/Cash.png",
                        height: 55,
                        width: 55,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            '     Cash On Delivery',
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Hexcolor("#6A6DFF"),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Ionicons.ios_checkmark_circle,
                        color: Colors.green,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '     ADD COUPAN',
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Hexcolor("#6A6DFF"),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 120,
                              height: 40,
                              padding:
                                  EdgeInsets.only(left: 10, top: 5, bottom: 5),
                              child: Center(
                                child: Text(
                                  "XYZ123",
                                  style: GoogleFonts.exo2(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Hexcolor("#F2F2F5"),

                                  // color:Colors.g
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        offset: Offset(6, 2),
                                        blurRadius: 6.0,
                                        spreadRadius: 3.0),
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.9),
                                        offset: Offset(-6, -2),
                                        blurRadius: 6.0,
                                        spreadRadius: 3.0)
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                '     Credit Remaining:',
                                style: GoogleFonts.exo2(
                                    fontSize: 18,
                                    color: Hexcolor("#6A6DFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "120 QAR",
                                style: GoogleFonts.exo2(
                                    fontSize: 18,
                                    color: Hexcolor("#6A6DFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Apply",
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Hexcolor("#F2F2F5"),

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
            Text(
              "Total 1715 QAR",
              style: GoogleFonts.exo2(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
                  child: Center(
                    child: Text(
                      'Place Order',
                      style: GoogleFonts.exo2(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.red,

                      // color:Colors.g
                      borderRadius: BorderRadius.circular(15.0),
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
                  borderRadius: BorderRadius.circular(15.0),
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
