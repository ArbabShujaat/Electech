import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/Screens/PrimaryScreens/PrimaryScreen.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
                height: 10,
              ),
              Text(
                'Categories',
                style: GoogleFonts.exo2(
                    fontSize: 22,
                    color: Hexcolor("#6A6DFF"),
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: height - 45 - (height / 10) - (height / 10),
                child: ListView(
                  children: <Widget>[
                    categoryIem(
                        width,
                        "assets/categories/Homewifi.png",
                        "Home Gadgets",
                        "assets/categories/printers.png",
                        "Office Accessories",
                        true),
                    categoryIem(
                        width,
                        "assets/categories/watches.png",
                        "Watch and braceletes",
                        "assets/categories/steering.png",
                        "Magnet straps",
                        false),
                    categoryIem(
                        width,
                        "assets/categories/mirrosphone.png",
                        "Mobile Accessories",
                        "assets/categories/jacks.png",
                        "Cables",
                        false),
                    categoryIem(
                        width,
                        "assets/categories/chargers.png",
                        "Home charger",
                        "assets/categories/pwerbank.png",
                        "Power Banks",
                        false),
                    categoryIem(
                        width,
                        "assets/categories/phonecovers.png",
                        "Phone cases",
                        "assets/categories/mouse.png",
                        "Computer Accessories",
                        false),
                    categoryIem(
                        width,
                        "assets/categories/speakers.png",
                        "Headphones",
                        "assets/categories/controller.png",
                        "Gaming Accessories",
                        false),
                    categoryIem(
                        width,
                        "assets/categories/laptops.png",
                        "Laptop Accessories",
                        "assets/categories/mobilestand.png",
                        "Automotive Accessories",
                        false),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar(context, height, width));
  }

  Widget categoryIem(double width, String image1, String title1, String image2,
      String title2, bool first) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        if (!first)
          SizedBox(
            height: 50,
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Hexcolor("#F2F2F5"),
                    // color:Colors.g
                    borderRadius: BorderRadius.circular(10.0),
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
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        image1,
                        height: 100,
                        width: width / 2,
                      ),
                      Text(
                        title1,
                        style: GoogleFonts.exo2(
                            color: Hexcolor("#6A6DFF"),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                width: 180,
                decoration: BoxDecoration(
                    color: Hexcolor("#F2F2F5"),
                    // color:Colors.g
                    borderRadius: BorderRadius.circular(10.0),
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
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        image2,
                        height: 100,
                        width: width / 2,
                      ),
                      Text(
                        title2,
                        style: GoogleFonts.exo2(
                            color: Hexcolor("#6A6DFF"),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
