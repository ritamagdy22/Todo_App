
import 'package:flutter/material.dart';
import 'package:todolist_app/settings/Themeing_buttom_sheet.dart';
import 'package:todolist_app/settings/language_buttom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10,right: 12, left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Language",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(5)),
          InkWell(
            onTap: (){

            ShowLanguageButton();

            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.pinkAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(Icons.arrow_circle_down)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Mood",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.all(5)),
          InkWell(
            onTap: (){
              showThemeingbuttonsheet();
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.pinkAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light Mood",
                    style: TextStyle(fontSize: 25),
                  ),
                  Icon(Icons.arrow_circle_down)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ShowLanguageButton() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return LanguageButtonSheet();

        });

  }

  void showThemeingbuttonsheet() {

    showModalBottomSheet(
        context: context, builder: (context){
      return  ThemeingButtonSheet();
    });

  }
}
