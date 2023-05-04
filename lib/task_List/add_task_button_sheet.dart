import 'package:flutter/material.dart';

class AddTaskButtonSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        
        children: [
          Text(
            'Add Your Task Here',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your task here'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Select date please",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                  onPressed: (){}, child: Text("Add"),style:  ElevatedButton.styleFrom(
                  primary: Colors.white10,
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  textStyle: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              )
            ],
          )),
        ],
      ),
    );
  }
}
