import 'package:flutter/material.dart';
import 'package:my_projets_in_flutter01_do_to_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Make Todo App', false],
    ['Make Tutorial', false],
  ];

  void checkBoxChanged(bool? value, int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('TO DO'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
              );
            },
          ),
        ],
      ),
    );
  }
}
