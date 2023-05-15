
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todolist_app/model/task.dart';

CollectionReference<Task>getTaskCollection() {
  /*
  t3ml collection asmo task w t3rf al firebase ani bt3aml bl task
   */
  return FirebaseFirestore.instance.collection("task").
      /*
      withconvertor : al data de liha no33
      tab al no3 da mn eh ? Task
       */
  withConverter<Task>(
      fromFirestore:
          ((snapshot,options)=>Task.fromJson(snapshot.data()!)) ,
      toFirestore:
          (task,options)=>task.toJason());
}

Future<void> addTaskToFireStore(Task task){

 var taskcollection= getTaskCollection();
 var docref = taskcollection.doc();
 task.id = docref.id; // auto generate
 return docref.set(task);
}

Future<void>DeletTaskFromFireStore(Task task){
return getTaskCollection().doc(task.id).delete();
}