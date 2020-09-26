import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/List/List.dart';
import 'package:ecommerce/Widgets/responsiveUi.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:flutter/widgets.dart';

import 'Drawer/drawer.dart';

class PrimaryScreen extends StatefulWidget {
  @override
  _PrimaryScreenState createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    bool _large = ResponsiveWidget.isScreenLarge(width, _pixelRatio);
    bool _medium = ResponsiveWidget.isScreenMedium(width, _pixelRatio);
    bool _small = ResponsiveWidget.isScreenSmall(width, _pixelRatio);

    print(width * _pixelRatio);
    print(_pixelRatio);
    print(_large);
    print(_small);
    print(_medium);

    return Scaffold(
        drawer: drawer(context),
        body: Container(
          color: Hexcolor("#F2F2F5"),
          child: Column(
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6, top: 6),
                child: Container(
                  // decoration: BoxDecoration(
                  //     color: Hexcolor("#F2F2F5"),
                  //     borderRadius: BorderRadius.circular(15.0),
                  //     boxShadow: [
                  //       BoxShadow(
                  //           color: Color.fromRGBO(0, 0, 0, 0.2),
                  //           offset: Offset(6, 2),
                  //           blurRadius: 6.0,
                  //           spreadRadius: 3.0),
                  //       BoxShadow(
                  //           color: Color.fromRGBO(255, 255, 255, 0.9),
                  //           offset: Offset(-6, -2),
                  //           blurRadius: 6.0,
                  //           spreadRadius: 3.0)
                  //     ]),
                  height: height / 4.8,
                  width: width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Carousel(
                      overlayShadow: false,
                      dotBgColor: Colors.transparent,
                      // dotSize: 15,
                      // dotIncreaseSize: 10,
                      dotSize: 0,
                      // dotSpacing: 30,

                      // dotIncreasedColor: Hexcolor("#6A6DFF"),
                      // dotColor: Colors.grey,
                      images: [
                        Image.asset(
                          "assets/ad2.jpeg",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/ad1.jpeg",
                          fit: BoxFit.fill,
                        ),
                        Image.asset(
                          "assets/ad3.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: height -
                    (height / 10) -
                    (height / 10) -
                    (height / 4.8) -
                    36,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    headings("Featured Products"),
                    SizedBox(
                      height: height / 100,
                    ),
                    Container(
                      // decoration:
                      //     BoxDecoration(color: Hexcolor("#F0F0F0"), boxShadow: [
                      //   BoxShadow(
                      //       color: Color.fromRGBO(0, 0, 0, 0.2),
                      //       offset: Offset(6, 2),
                      //       blurRadius: 6.0,
                      //       spreadRadius: 3.0),
                      //   BoxShadow(
                      //       color: Color.fromRGBO(255, 255, 255, 9),
                      //       offset: Offset(-6, -2),
                      //       blurRadius: 6.0,
                      //       spreadRadius: 3.0)
                      // ]),
                      height: height / 4.5,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: grocerry == null ? 0 : grocerry.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map restaurant = grocerry[index];

                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, PRODUCT_DETAIL);
                            },
                            child: SlideItem(
                              img: restaurant["img"],
                              title: restaurant["title"],
                              price: restaurant["price"],
                              favorite: restaurant["Favorite"],
                              weight: restaurant["weight"],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: height / 120,
                    ),
                    headings("Trending Products"),
                    SizedBox(
                      height: height / 120,
                    ),
                    Container(
                      // decoration:
                      //     BoxDecoration(color: Hexcolor("#F0F0F0"), boxShadow: [
                      //   BoxShadow(
                      //       color: Color.fromRGBO(0, 0, 0, 0.2),
                      //       offset: Offset(6, 2),
                      //       blurRadius: 6.0,
                      //       spreadRadius: 3.0),
                      //   BoxShadow(
                      //       color: Color.fromRGBO(255, 255, 255, 9),
                      //       offset: Offset(-6, -2),
                      //       blurRadius: 6.0,
                      //       spreadRadius: 3.0)
                      // ]),
                      height: height / 4,
                      child: ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: grocerry == null ? 0 : grocerry.length,
                        itemBuilder: (BuildContext context, int index) {
                          Map restaurant = grocerry[index];

                          return SlideItem(
                            img: restaurant["img"],
                            title: restaurant["title"],
                            price: restaurant["price"],
                            favorite: restaurant["Favorite"],
                            weight: restaurant["weight"],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar(context, height, width));
  }

  Widget navigationBarButtonsHome(String icon, Color color, String name) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Hexcolor("#F2F2F5"),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(6, 2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    offset: Offset(-6, -2),
                    blurRadius: 6.0,
                    spreadRadius: 3.0)
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
            child: Column(
              children: <Widget>[customiconbottombar(icon)],
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

  Widget headings(String heading) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
              //
            ),
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment(4, 0.0),
            //     colors: [
            //       Hexcolor("#6A6DFF"),
            //       Hexcolor("#9019FF"),
            //     ]),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
            child: Text(
              heading,
              style: GoogleFonts.exo2(
                  fontSize: 20,
                  color: Hexcolor("#6A6DFF"),
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
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
                FontAwesome.bars,
                color: Colors.white,
                size: 20,
              ),
              // onPressed: () => _scaffoldKey.currentState.openDrawer(),
              onPressed: () {
                Scaffold.of(context).openDrawer();
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

///////slide item///////////////////////

class SlideItem extends StatefulWidget {
  final String img;
  final String title;
  final String price;
  final bool favorite;
  final String weight;

  SlideItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.price,
    @required this.favorite,
    @required this.weight,
  }) : super(key: key);

  @override
  _SlideItemState createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0, bottom: 0),
      child: Container(
        color: Hexcolor("#F2F2F5"),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Hexcolor("#F2F2F5"),

                    // color:Colors.g
                    borderRadius: BorderRadius.circular(5.0),
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
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "${widget.img}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 20,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 4),
                      Text(
                        "${widget.price}",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
