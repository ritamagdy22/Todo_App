import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  static String routename= "Home";
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
        onPressed: (){},
        child: Icon(Icons.add, size: 30,),


      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked

    );
  }
}