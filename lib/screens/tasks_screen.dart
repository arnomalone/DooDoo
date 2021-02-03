import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doodoo_flutter/constants.dart';
import 'package:doodoo_flutter/widgets/tasks_list.dart';
import 'package:doodoo_flutter/widgets/bottomSheet.dart';
import 'package:doodoo_flutter/model/task.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => BottomContainer(
                  addTaskCallback: (newTaskTitle) {
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                    });
                    Navigator.pop(context);
                  },
              ),
          );
        },
        backgroundColor: kLightColor,
        child: Icon(Icons.add, color: kDarkColor,),
      ),
      backgroundColor: kLightColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list, color: kLightColor, size: 30.0,),
                  backgroundColor: kDarkColor,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                    'DooDoo',
                  style: TextStyle(
                    color: kDarkColor,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                    color: kDarkColor,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: kDarkColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: TasksList(
                tasks: tasks,
              ),
            ),
          )
        ],
      ),
    );
  }
}
