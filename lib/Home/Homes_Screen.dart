import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/settings/settings.dart';
import 'package:todolist_app/task_List/add_task_button_sheet.dart';
import 'package:todolist_app/task_List/task_list.dart';

class HomeScreen extends StatefulWidget{

  static String routename= "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex= 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(
        title: Text('Todo List',
      ),
        toolbarHeight: 100,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(
        ),
        notchMargin: 10,
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index){selectedindex = index;
            setState(() {

            });},
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/tasks.png')),
            label: "tasks"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/settings.png')),
                label: "settings"
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          showAddBottonSheet();

        },

        child: Icon(Icons.add, size: 30,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedindex],
    );
  }
  List<Widget> tabs = [TaskListApp(), Settings()];

  void showAddBottonSheet() {

    showModalBottomSheet(
        context: context,
        builder: (context){
         return AddTaskButtonSheet();}

    );
  }
}