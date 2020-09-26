import 'package:ecommerce/Constant/constant.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewAdress extends StatefulWidget {
  @override
  _AddNewAdressState createState() => _AddNewAdressState();
}

class _AddNewAdressState extends State<AddNewAdress> {
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
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'EDIT/DELIVERY',
                        style: GoogleFonts.exo2(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'ADDRESS',
                        style: GoogleFonts.exo2(
                            fontSize: 22,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              adress(),
              SizedBox(
                height: 10,
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
                            padding: EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                '        EDIT       ',
                                style: GoogleFonts.exo2(
                                    fontSize: 20,
                                    color: Hexcolor("#6A6DFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, PAYMENT_1),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(15.0),
                            child: Center(
                              child: Text(
                                '       SAVE       ',
                                style: GoogleFonts.exo2(
                                    fontSize: 20,
                                    color: Hexcolor("#6A6DFF"),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomAppBar(context, height, width));
  }

  Widget adress() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "Adress Name",
                    style: GoogleFonts.exo2(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Hexcolor("#F2F2F5"),
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
                    child: Center(
                      child: Text(
                        "Ahmad Abdullah",
                        style: GoogleFonts.exo2(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Phone Number",
                    style: GoogleFonts.exo2(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    height: 70,
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
                    child: Center(
                      child: Text(
                        "03319042434",
                        style: GoogleFonts.exo2(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Blue Board",
                    style: GoogleFonts.exo2(
                        fontSize: 14,
                        color: Colors.blueAccent[700],
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Building No.  رقم المبنى",
                        style: GoogleFonts.exo2(
                            fontSize: 15,
                            color: Colors.blueAccent[700],
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Container(
                              height: 60,
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
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.9),
                                        offset: Offset(-6, -2),
                                        blurRadius: 6.0,
                                        spreadRadius: 3.0)
                                  ]),
                              child: Center(
                                child: Text(
                                  "          45          ",
                                  style: GoogleFonts.exo2(
                                      fontSize: 18,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Zone  منطقة",
                            style: GoogleFonts.exo2(
                                fontSize: 15,
                                color: Colors.blueAccent[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Container(
                                  height: 60,
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
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.9),
                                            offset: Offset(-6, -2),
                                            blurRadius: 6.0,
                                            spreadRadius: 3.0)
                                      ]),
                                  child: Center(
                                    child: Text(
                                      "          53           ",
                                      style: GoogleFonts.exo2(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Street  شارع",
                            style: GoogleFonts.exo2(
                                fontSize: 15,
                                color: Colors.blueAccent[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Container(
                                  height: 60,
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
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.9),
                                            offset: Offset(-6, -2),
                                            blurRadius: 6.0,
                                            spreadRadius: 3.0)
                                      ]),
                                  child: Center(
                                    child: Text(
                                      "          812          ",
                                      style: GoogleFonts.exo2(
                                          fontSize: 18,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
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
          ),
        ],
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
