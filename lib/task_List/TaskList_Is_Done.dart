import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskIsDne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){


      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 21,vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.redAccent[100],

        ),
        child: Icon(Icons.check,size: 30,),

      ),
    );

  }
}
