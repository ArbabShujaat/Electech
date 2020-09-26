import 'package:ecommerce/Screens/PrimaryScreens/Cart/AddNewAdress.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/AdressScreen.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/CartScreen.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/Payment1.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Cart/Payment2.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Category.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Drawer/Orders.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Drawer/profile.dart';
import 'package:ecommerce/Screens/PrimaryScreens/Drawer/setttings.dart';
import 'package:ecommerce/Screens/PrimaryScreens/ProductDetail/ProductDetail.dart';
import 'package:ecommerce/Screens/RegistrationsScreens/ResetPassword/EmailSent.dart';
import 'package:ecommerce/Screens/RegistrationsScreens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Constant/constant.dart';
import 'Screens/PrimaryScreens/PrimaryScreen.dart';

import 'Screens/RegistrationsScreens/Login.dart';
import 'Screens/RegistrationsScreens/ResetPassword/EmailEntry.dart';
import 'Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Racing App",
      theme: ThemeData(primaryColor: Colors.red, primarySwatch: Colors.red),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        PRIMARY_SCREEN: (BuildContext context) => PrimaryScreen(),
        LOGIN_SCREEN: (BuildContext context) => LoginScreen(),
        SIGNUP_SCREEN: (BuildContext context) => SignUpScreen(),
        RESETPASSWORD_SCREEN: (BuildContext context) => ResetPassword(),
        EMAILSENT_SCREEN: (BuildContext context) => EmailSent(),
        SETTINGS_SCREEN: (BuildContext context) => Settings(),
        CATEGORY_SCREEN: (BuildContext context) => CategoryScreen(),
        PRODUCT_DETAIL: (BuildContext context) => ProductDetail(),
        CART_SCREEN: (BuildContext context) => CartScreen(),
        ADDRESS_SCREEN: (BuildContext context) => AdressScreen(),
        ADDADDRESS_SCREEN: (BuildContext context) => AddNewAdress(),
        PROFILE_SCREEN: (BuildContext context) => Profile(),
        ORDER_SCREEN: (BuildContext context) => Order(),
        PAYMENT_1: (BuildContext context) => Payment1(),
        PAYMENT_2: (BuildContext context) => Payment2()
      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}
