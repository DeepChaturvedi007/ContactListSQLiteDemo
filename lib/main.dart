import 'package:flutter/material.dart';
import 'package:todo_list/Screens/todo_list.dart';
import 'package:todo_list/Screens/todo_detail.dart';
import 'package:todo_list/Screens/launch_screen.dart';

void main() {
	runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
	@override
  Widget build(BuildContext context) {
    return MaterialApp(
	    title: 'TodoList',
	    debugShowCheckedModeBanner: false,
	    theme: ThemeData(
		    primarySwatch: Colors.blue
	    ),
	    home: LaunchScreen(),
    );
  }
}