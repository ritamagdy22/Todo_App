import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/firebase.dart';
import 'package:todolist_app/provider/list%20provider.dart';
import 'package:todolist_app/task_List/task_widget.dart';


import '../model/task.dart';

class TaskListApp extends StatefulWidget {
  @override
  State<TaskListApp> createState() => _TaskListAppState();
}

class _TaskListAppState extends State<TaskListApp> {

  DateTime SelectedDay = DateTime.now();

  DateTime selecteDate =DateTime.now();

  List<Task> tasklist =[];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ListProvider>(context);

    if(tasklist.isEmpty){
      GetallTasksFromfirestore();

    }
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: provider.selecteDate,
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) {
     provider.setNewSelectedDay(date);

            },
            leftMargin: 20,
            monthColor: Colors.blueGrey,
            dayColor: Colors.teal[200],
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.redAccent[100],
            dotsColor: Color(0xFF333A47),
            selectableDayPredicate: (date) => true,
            locale: 'en_ISO',
          ),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return TaskWidget(task: tasklist[index],);
              },
              itemCount: tasklist.length,
            ),
          ),
        ],
      ),
    );
  }

  GetallTasksFromfirestore()  async{
    QuerySnapshot<Task> querySnapshot =
    await getTaskCollection().get();

   tasklist= querySnapshot.docs.map((doc){
      return doc.data();

    }).toList();
   setState(() {

   });

  }
}

