import 'package:ecommerce/Constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              "assets/2.png",
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 1.1,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: height / 4,
                      ),
                      formFields("Enter Email", "assets/icons/email.png",
                          emailController),
                      formFields("Enter Password", "assets/icons/password.png",
                          passwordController),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Or",
                            style: GoogleFonts.exo2(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/icons/gmail.png",
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            "assets/icons/facebook.png",
                            height: 40,
                            width: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Forgot your Password ?",
                              style: GoogleFonts.exo2(
                                fontSize: 14,
                              ),
                            ),
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, RESETPASSWORD_SCREEN),
                              child: Text(
                                "  Recover",
                                style: GoogleFonts.exo2(
                                  fontSize: 18,
                                  color: Hexcolor("#6A6DFF"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "Continue as a guest!",
                          style: GoogleFonts.exo2(
                              fontSize: 18,
                              color: Hexcolor("#6A6DFF"),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      button(),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Don't have an account ?",
                              style: GoogleFonts.exo2(
                                fontSize: 14,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, SIGNUP_SCREEN);
                              },
                              child: Text(
                                "  Sign Up",
                                style: GoogleFonts.exo2(
                                  fontSize: 18,
                                  color: Hexcolor("#6A6DFF"),
                                ),
                              ),
                            ),
                          ],
                        ),
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

  Widget formFields(
      String hintText, String icon, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.orange[200],
            decoration: InputDecoration(
              prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    icon,
                    height: 20,
                    width: 20,
                  )),
              hintText: hintText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }

  Widget button() {
    return loginLoading
        ? CircularProgressIndicator()
        : InkWell(
            onTap: () async {
              Navigator.pushNamed(context, PRIMARY_SCREEN);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  width: 100,
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
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'SIGN IN',
                    style: GoogleFonts.exo2(
                        fontSize: 18,
                        color: Hexcolor("#6A6DFF"),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          );
  }
}
