import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey();

  bool loginLoading = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Image.asset(
              "assets/sign up.png",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: 30,
              left: 20,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, color: Colors.white))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: height / 8,
                      ),
                      Row(
                        children: <Widget>[
                          new Flexible(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  formFields(
                                    " Enter Email",
                                    Icon(MaterialCommunityIcons.email_outline,
                                        color: Hexcolor("#6A6DFF"), size: 30),
                                    emailController,
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/icons/user.png",
                                            height: 30,
                                            width: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              " Full Name",
                                              style: GoogleFonts.exo2(
                                                  color: Colors.grey,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: Column(
                          children: <Widget>[
                            formFields(
                              " Enter Email",
                              Icon(MaterialCommunityIcons.email_outline,
                                  color: Hexcolor("#6A6DFF"), size: 30),
                              emailController,
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/icons/email.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "  Email Address",
                                        style: GoogleFonts.exo2(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 60, 20),
                        child: Column(
                          children: <Widget>[
                            formFields(
                              "Enter Email",
                              Icon(MaterialCommunityIcons.email_outline,
                                  color: Colors.grey, size: 30),
                              emailController,
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/icons/password.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Password",
                                        style: GoogleFonts.exo2(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 100,
                              child: new Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: SizedBox(
                                      width: 60,
                                      child: nameformFields(
                                          "+974",
                                          emailController,
                                          Hexcolor("#6A6DFF"))),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            new Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: nameformFields("Phone Number",
                                    emailController, Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacementNamed(
                            context, PRIMARY_SCREEN),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  child: Center(
                                    child: Text(
                                      'REGISTER',
                                      style: GoogleFonts.exo2(
                                          fontSize: 18,
                                          color: Hexcolor("#6A6DFF"),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Hexcolor("#F2F2F5"),

                                      // color:Colors.g
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // button(),
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

  Widget nameformFields(
      String hintText, TextEditingController controller, Color color) {
    return Container(
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
        padding: const EdgeInsets.only(left: 20.0),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: color),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }

  Widget formFields(String hintText, Widget icon,
      TextEditingController controller, Widget widget1) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
      child: Container(
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
        child: widget1,
        // child: Padding(
        //   padding: const EdgeInsets.only(left: 20.0),
        //   child: TextFormField(
        //     controller: controller,
        //     keyboardType: TextInputType.emailAddress,
        //     decoration: InputDecoration(
        //       // prefixIcon: Padding(
        //       //   padding: const EdgeInsets.only(right: 8.0),
        //       //   child: icon,
        //       // ),
        //       // hintText: hintText,
        //       border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(30.0),
        //           borderSide: BorderSide.none),
        //     ),
        //   ),
        // ),
      ),
    );
  }

  // Widget button() {
  //   return loginLoading
  //       ? CircularProgressIndicator()
  //       : InkWell(
  //           onTap: () async {
  //             Navigator.pushReplacementNamed(context, PRIMARY_SCREEN);
  //           },
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: <Widget>[
  //               Container(
  //                 alignment: Alignment.center,
  //                 width: 300,
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
  //                     gradient: LinearGradient(colors: [
  //                       Hexcolor("#6A6DFF"),
  //                       Hexcolor("#9019FF"),
  //                     ])),
  //                 padding: const EdgeInsets.all(12.0),
  //                 child: Text(
  //                   'REGISTER',
  //                   style: GoogleFonts.exo2(
  //                       fontSize: 18,
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  // }
}
