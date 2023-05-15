import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/firebase.dart';
import 'package:todolist_app/model/task.dart';
import 'package:todolist_app/provider/list%20provider.dart';

class AddTaskButtonSheet extends StatefulWidget {
  @override
  State<AddTaskButtonSheet> createState() => _AddTaskButtonSheetState();
}

class _AddTaskButtonSheetState extends State<AddTaskButtonSheet> {
  String title = '';
  String description = '';
  DateTime SelectedDay = DateTime.now();
  GlobalKey<FormState>formkey = GlobalKey<FormState>();
 late ListProvider  provider;

  @override
  Widget build(BuildContext context) {
     provider =Provider.of<ListProvider>(context);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Add Your Task Here",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Form(
                key: formkey,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    TextFormField(
                      onChanged: (text) {
                        title = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty)
                          return 'Please enter task title';
                      },
                      decoration:
                      InputDecoration(labelText: "Enter your task here"),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    TextFormField(
                      onChanged: (text) {
                        description = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty)
                          return 'Please enter task description';
                      },


                      decoration:
                      InputDecoration(labelText: "Enter your description here"),
                      minLines: 4,
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Select Date",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(10)),

                    InkWell(
                      child: Text(
                        "${SelectedDay.day}/${SelectedDay.month}/${SelectedDay
                            .year}",
                        style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        ChooseDate();
                      },
                    ),
                    Padding(padding: EdgeInsets.all(10)),

                    ElevatedButton(
                      child: Text('Add It To Your List', style: TextStyle(
                          fontSize: 20

                      ),),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent,
                        onPrimary: Colors.white,
                        shadowColor: Colors.red,
                        elevation: 5,
                      ),
                      onPressed: () {
                        AddTask();

                        print('Pressed');
                      },
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void ChooseDate() async {
    var choosenday = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));

    if (choosenday != null) {
      SelectedDay = choosenday;
      setState(() {});
    }
  }

  void AddTask() {
    if (formkey.currentState?.validate() == true) {
      Task task = Task(
          title: title,
          date: SelectedDay.millisecondsSinceEpoch,
          description: description);
      addTaskToFireStore(task).timeout(
          Duration(microseconds: 500),onTimeout: (){
            print("Task added");
            provider.GetallTasksFromfirestore();
            Navigator.pop(context);

      });
    }
  }
}