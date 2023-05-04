import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/Theme.dart';

class  TaskWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: MyThemeData.WhiteColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            color: MyThemeData.PrimaryLight,
            height: 80,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Task1",
                    style: TextStyle(color: Colors.pink,fontSize: 20),),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Description")
                ],
              )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 21,vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyThemeData.PrimaryLight,
            ),
            child: Icon(Icons.check,size: 30,),
          ),
        ],
      ),
    );
  }
}