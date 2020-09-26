import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0XFFEFF3F6),
        child: Column(
          children: <Widget>[
            CustomAppBarDetailsPage(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_back,
                  color: Hexcolor("#6A6DFF"),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/tv.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Hexcolor("#6A6DFF"),
                ),
                SizedBox(
                  width: 10,
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
                  onTap: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: Container(
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
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Text(
                    counter.toString(),
                    style: GoogleFonts.exo2(
                        color: Hexcolor("#6A6DFF"),
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Container(
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
                        MaterialIcons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Laptop bag with multi stripes",
              style:
                  GoogleFonts.exo2(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 22),
              child: Text(
                "Laptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripesLaptop bag with multi stripes",
                style: GoogleFonts.exo2(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
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
                      child: customicon("assets/icons/like.png")),
                ),
                SizedBox(
                  width: 30,
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
                      child: customicon("assets/icons/share.png")),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 8),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "1100 QAR",
                        style: GoogleFonts.exo2(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0XFFEFF3F6),
                            borderRadius: BorderRadius.circular(20.0),
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
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Please choose colour",
                                style: GoogleFonts.exo2(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0XFFEFF3F6),
                      borderRadius: BorderRadius.circular(80.0),
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
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: <Widget>[
                        customicon("assets/icons/cart.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ADD TO CART",
                          style: GoogleFonts.exo2(
                              color: Hexcolor("#6A6DFF"),
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomAppBarDetailsPage extends StatelessWidget {
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
                size: 30,
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
