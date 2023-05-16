import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todolist_app/Theme.dart';
import 'package:todolist_app/firebase.dart';

import '../model/task.dart';

class  TaskWidget extends StatelessWidget{
  Task task;
  TaskWidget({required this.task});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slidable(
        key: const ValueKey(0),

        // The start action pane is the one at the left or the top side.
        startActionPane: ActionPane(
          extentRatio: 0.25,
          // A motion is a widget used to control how the pane animates.
          motion: const ScrollMotion(),

          // A pane can dismiss the Slidable.
          dismissible: DismissiblePane(onDismissed: () {}),

          // All actions are defined in the children parameter.
          children: [
            // A SlidableAction can have an icon and/or a label.
            SlidableAction(
              onPressed: (context){

       DeletTaskFromFireStore(task);
              },
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),


        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: MyThemeData.WhiteColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              Container(
                color: Colors.black,
                height: 80,
              ),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(task.title,
                        style: TextStyle(color: Colors.pink,fontSize: 20),),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(task.description)
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 21,vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.redAccent[100],

                ),
                child: Icon(Icons.check,size: 30,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}