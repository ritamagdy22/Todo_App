import 'dart:ui';

import 'package:flutter/material.dart';

class MyThemeData{
static Color PrimaryLight = Color(0xffDFECDB);
static Color PrimaryDark = Color(0xff060E1E);
static Color GreenLight = Color(0xffffff);
static Color WhiteColor = Color(0xff5D9CEC);
static Color BlackColor = Color(0xff363636);
static Color RedColor = Color(0xffEC4B4B);
static Color GreenColor = Color(0xff61E757);



static ThemeData DarkTheme =ThemeData(

  primaryColor: PrimaryDark,
  scaffoldBackgroundColor:  PrimaryDark,
  appBarTheme: AppBarTheme(
    backgroundColor: PrimaryLight,

  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
    showUnselectedLabels: true,
    showSelectedLabels: false,
    selectedItemColor: PrimaryLight,
    unselectedItemColor: Colors.grey
  ),
floatingActionButtonTheme: FloatingActionButtonThemeData(
  backgroundColor: PrimaryLight,
  shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Colors.white,
      width: 4
    ),
    borderRadius: BorderRadius.circular(30)
  )
),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold
    )
  )

);



static ThemeData LightTheme =ThemeData(

  primaryColor: PrimaryLight,
  scaffoldBackgroundColor:  PrimaryLight,

);


}