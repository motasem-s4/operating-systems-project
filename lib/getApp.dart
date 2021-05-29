import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:os_project/HomePage.dart';

dynamic getApp(BuildContext context) {
  final materialLightThemeData = ThemeData(
      primarySwatch: Colors.brown,
      primaryColor: Color(0xff503E42),
      backgroundColor: Color(0xffFFFCFE),
      accentColor: Color(0xffCF8A50),
      dividerColor: Color.fromRGBO(112, 112, 112, 1),
      scaffoldBackgroundColor: Color(0xffFFFCFE),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      bottomAppBarColor: Colors.white,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
      fontFamily: 'Metropolis',
      textTheme: TextTheme(
        headline2: TextStyle(color: Colors.black, fontSize: 40.0),
        headline3: TextStyle(color: Colors.black, fontSize: 32.0),
        headline4: TextStyle(color: Colors.grey[900], fontSize: 28.0, fontWeight: FontWeight.w900),
        headline5: TextStyle(color: Colors.grey[800], fontSize: 20.0, fontWeight: FontWeight.w900),
        headline6: TextStyle(color: Colors.grey[800], fontSize: 18.0, fontWeight: FontWeight.w900),
        bodyText2: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w700),
        bodyText1: TextStyle(color: Colors.grey[600], fontSize: 17.0, fontWeight: FontWeight.w700),
        caption: TextStyle(color: Colors.grey[700], fontSize: 12.0, fontWeight: FontWeight.w600),
        overline: TextStyle(color: Colors.grey[500], fontSize: 11.0, letterSpacing: 1.5, fontWeight: FontWeight.w800),
        button: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.w700),
      ),
      dividerTheme: DividerThemeData(indent: 0.0, endIndent: 0.0, thickness: 0.5, space: 0.5));

  return MaterialApp(
    title: 'OS project',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
    },
    theme: materialLightThemeData,
  );
}
