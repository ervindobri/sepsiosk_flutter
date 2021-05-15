import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sepsiosk/globals.dart';
import 'package:sepsiosk/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sepsi OSK Fan Page',
      theme: ThemeData(
        primaryColor: Globals.primaryColor,
        secondaryHeaderColor: Globals.secondaryColor,
        fontFamily: 'PT Sans',
        textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Globals.primaryColor,
            fontSize: 25,
            fontFamily: 'PT Sans'
          ),
          bodyText1: TextStyle(
            color: Globals.primaryColor,
            fontWeight: FontWeight.w700
          ),
          headline5: TextStyle(
            color: Globals.primaryColor,
            fontFamily: 'PT Sans',
            fontWeight: FontWeight.w700,
            fontSize: 35,
          ),
          subtitle1: TextStyle(
            color: Colors.white,
            fontFamily: 'PT Sans',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            shadows: [BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 10,
            )]

          )
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}