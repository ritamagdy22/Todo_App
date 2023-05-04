import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/Theme.dart';


import 'Home/Homes_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        initialRoute:HomeScreen.routename,
        routes: {
          HomeScreen.routename:(context)=>HomeScreen(),
        },

        theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,

    );
  }

}