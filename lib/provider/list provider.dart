
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:todolist_app/task_List/task_list.dart';

import '../firebase.dart';
import '../model/task.dart';

class ListProvider extends ChangeNotifier{
  DateTime selecteDate =DateTime.now();


  List<Task> tasklist =[];
  GetallTasksFromfirestore()  async{
    QuerySnapshot<Task> querySnapshot = await getTaskCollection().get();

    tasklist= querySnapshot.docs.map((doc){
      return doc.data();

    }).toList();

   tasklist=tasklist.where((task) {
  DateTime taskdate = DateTime.fromMicrosecondsSinceEpoch(task.date);
  if(selecteDate.day==taskdate.day
      && selecteDate.month == taskdate.month
  &&selecteDate.year== taskdate.year
  ){
    return true;
  }else
    {
      return false;
    }

}).toList();


   tasklist.sort((Task task1, Task task2){

     DateTime date1= DateTime.fromMicrosecondsSinceEpoch(task1.date);
     DateTime date2= DateTime.fromMicrosecondsSinceEpoch(task2.date);
return date1.compareTo(date2);


   });

notifyListeners();
  }

  void setNewSelectedDay(DateTime newDate){

    selecteDate = newDate;
    GetallTasksFromfirestore();

  }


}