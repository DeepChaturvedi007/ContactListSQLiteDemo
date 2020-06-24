import 'package:flutter/material.dart';
import 'package:todo_list/Screens/todo_list.dart';
import 'package:todo_list/Models/todo.dart';
import 'package:todo_list/Screens/todo_detail.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding : EdgeInsets.only(top: 30, left: 0, right: 0, bottom: 20),
                child : GestureDetector(
                  onTap: () { print("I was tapped!");  Navigator.push(context, MaterialPageRoute(builder: (context) => TodoDetail(Todo('', '', ''), 'Add Todo')),);},
                  child: Text('Add New Contact', style: TextStyle(color: Color(0xFF1479f6), fontFamily: 'Roboto', fontSize: 18,)),
                ),
              ),
              Padding(padding : EdgeInsets.all(10),
                child : GestureDetector(
                  onTap: () {  Navigator.push(context, MaterialPageRoute(builder: (context) => TodoList()),);},
                  child: Text('View Contacts', style: TextStyle(color: Color(0xFF1479f6), fontFamily: 'Roboto', fontSize: 18,)),
                ),
              ),
            ],
          )
        )
      ),
    );
  }
}