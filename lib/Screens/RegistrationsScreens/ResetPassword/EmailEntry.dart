import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
              "assets/Reset Password .png",
              fit: BoxFit.cover,
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
                        height: height / 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Column(
                          children: <Widget>[
                            formFields(
                                "Example@gmail.com",
                                Icon(MaterialCommunityIcons.email_outline,
                                    color: Hexcolor("#6A6DFF"), size: 30),
                                emailController),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacementNamed(
                            context, EMAILSENT_SCREEN),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  child: Center(
                                    child: Text(
                                      'Reset Password',
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
                      SizedBox(
                        height: 10,
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

  Widget nameformFields(String hintText, TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white24,
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
        padding: const EdgeInsets.only(left: 20.0),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }

  Widget formFields(
      String hintText, Widget icon, TextEditingController controller) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/icons/email.png",
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "  Example@gmail.com",
                style: GoogleFonts.exo2(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
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
    );
  }
}
