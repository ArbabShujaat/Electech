import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Drawer/drawer.dart';
import 'package:ecommerce/Screens/PrimaryScreens/PrimaryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        drawer: drawer(context),
        body: Container(
          color: Hexcolor("#F2F2F5"),
          child: Column(
            children: <Widget>[
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Same Day Delivery',
                    style: GoogleFonts.exo2(
                        fontSize: 28,
                        color: Hexcolor("#6A6DFF"),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Delivery Charges 15 QAR',
                    style: GoogleFonts.exo2(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Your Order',
                    style: GoogleFonts.exo2(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: height / 2.2,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      listItem(),
                      listItem(),
                      listItem(),
                      listItem(),
                      listItem(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Total to be paid',
                    style: GoogleFonts.exo2(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '1715 QAR',
                    style: GoogleFonts.exo2(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, ADDADDRESS_SCREEN),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 20, 60, 0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                            child: Text(
                              'Go to Checkout',
                              style: GoogleFonts.exo2(
                                  fontSize: 20,
                                  color: Hexcolor("#6A6DFF"),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Hexcolor("#F8F8F8"),
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
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar(context, height, width));
  }

  Widget listItem() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        height: 150,
        color: Hexcolor("#F2F2F5"),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                "assets/tv.png",
                height: 100,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: Icon(Icons.close),
                  ),
                  Text(
                    'LG Television',
                    style: GoogleFonts.exo2(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Black LG',
                            style: GoogleFonts.exo2(
                                fontSize: 14,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '1000 QAR',
                            style: GoogleFonts.exo2(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 30),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.remove,
                                size: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '1',
                                  style: GoogleFonts.exo2(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0XFFEFF3F6),
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget navigationbarButtonscart(IconData icon, Color color, String name) {
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(7.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(6, 2),
                blurRadius: 6.0,
                spreadRadius: 3.0),
            BoxShadow(
                color: Color.fromRGBO(255, 255, 255, 0.08),
                offset: Offset(-6, -2),
                blurRadius: 6.0,
                spreadRadius: 3.0)
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(4, 0.0),
              colors: [
                Hexcolor("#6A6DFF"),
                Hexcolor("#9019FF"),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                color: color,
              ),
            ],
          ),
        ),
      ),
      Text(
        name,
        style: GoogleFonts.exo2(color: color, fontWeight: FontWeight.bold),
      )
    ],
  );
}
