import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeingButtonSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        
crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("LightMood", style: TextStyle(fontSize: 20),),
              Icon(Icons.check),
            ],
          ),
          SizedBox(height: 10,),
          Text("DarkMood", style: TextStyle(fontSize: 20),)
        ],
      ),
    );

  }
}