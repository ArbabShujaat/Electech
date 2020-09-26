import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

final String SPLASH_SCREEN = 'splashscreen';

final String PRIMARY_SCREEN = 'primaryscreen';
final String LOGIN_SCREEN = 'loginscreen';
final String SIGNUP_SCREEN = 'signupscreen';
final String RESETPASSWORD_SCREEN = 'resetscreen';
final String EMAILSENT_SCREEN = 'emailsentscreen';
final String SETTINGS_SCREEN = 'settingscreen';
final String CATEGORY_SCREEN = 'categorycreen';
final String PRODUCT_DETAIL = 'detailScreen';
final String CART_SCREEN = 'cartScreen';
final String ADDRESS_SCREEN = 'addressScreen';
final String ADDADDRESS_SCREEN = 'addaddressScreen';
final String PROFILE_SCREEN = 'ProfileScreen';
final String ORDER_SCREEN = 'OrdersScreen';
final String PAYMENT_1 = 'Payment1';
final String PAYMENT_2 = 'Payment2';

Color primarycolor = Colors.red[400];

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

Widget customicon(String icon) {
  return Image.asset(
    icon,
    height: 40,
    width: 40,
  );
}

Widget customiconbottombar(String icon) {
  return Image.asset(
    icon,
    height: 38,
    width: 38,
  );
}

Widget bottomAppBar(BuildContext context, double height, double width) {
  return Container(
    height: height / 11,
    width: width,
    color: Hexcolor("#F2F2F5"),
    child: Padding(
      padding: const EdgeInsets.only(left: 0, right: 0),
      child: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(color: Hexcolor("#F2F2F5"),

            // color:Colors.g
            // borderRadius: BorderRadius.only(
            //     topLeft: Radius.circular(30), topRight: Radius.circular(30)),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, PRIMARY_SCREEN);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: navigationBarButtonsHome(
                    "assets/icons/home.png", Colors.pink[300], ""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, CATEGORY_SCREEN);
                  },
                  child: navigationBarButtonsHome(
                      "assets/icons/categories.png", Colors.white, "")),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, CART_SCREEN);
                },
                child: navigationBarButtonsHome(
                    "assets/icons/cartHome.png", Colors.white, ""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, PROFILE_SCREEN);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: navigationBarButtonsHome(
                      "assets/icons/user.png", Colors.white, ""),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
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
          padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
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
