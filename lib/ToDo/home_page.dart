// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:myapp/data/database.dart";
import "package:myapp/util/dialog_box.dart";
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import "package:myapp/util/todo_tile.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference the hive box
  final _myBox = Hive.box("mybox");
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    // if this the 1st time ever opening the app, then create default data
    if (_myBox.get("TODOLIST") == null){
      db.createInitialData();
      db.updateDataBase();
    } else {
      // there already exists data in our database
      db.loadData();
    }

    super.initState();

  }

  // text controller
  final _controller = TextEditingController();



  // save new task
  void saveNewTask(){
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  // create a new task
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // edit task
//   void editTask() {
// // Suggested code may be subject to a license. Learn more: ~LicenseLog:3017354002.
//     showDialog(
//       context: context,
//       builder: (context) {
//         return DialogBox(
//           controller: _controller,
//           onSave: saveNewTask,
//           onCancel: () => Navigator.of(context).pop(),
//         );
//       },
//     );
//   }

  // delete task
  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 164, 209, 246),
      appBar: AppBar(
        
        title: Text("TO DO"),
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            //editFunction: (context) => editTask,
            deleteFunction: (context) => deleteTask(index),
            onChanged: (value) => setState(() {
              db.toDoList[index][1] = !db.toDoList[index][1];
              db.updateDataBase();
            },),
            
          );
        },
      ),
    );
  }
}