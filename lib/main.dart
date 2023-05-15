
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/Theme.dart';
import 'package:todolist_app/provider/list%20provider.dart';


import 'Home/Homes_Screen.dart';

void main() async{
/*
intisalizing firebase in main
 */
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // The default value is 40 MB. The threshold must be set to at least 1 MB,
// and can be set to Settings.CACHE_SIZE_UNLIMITED to disable garbage collection.

  FirebaseFirestore.instance.settings =
      Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
  await FirebaseFirestore.instance.disableNetwork();
  runApp(ChangeNotifierProvider(
    create: (context)=> ListProvider(),
      child: MyApp()));
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