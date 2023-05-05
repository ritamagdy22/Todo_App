import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguageButtonSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Englihs", style: TextStyle(fontSize: 20),),
              Icon(Icons.check),
            ],
          ),
          SizedBox(height: 10,),
          Text("Arabic", style: TextStyle(fontSize: 20),)
        ],

      ),

    );

  }
}