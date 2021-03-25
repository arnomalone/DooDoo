import 'package:flutter/cupertino.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:doodoo_flutter/model/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              name: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            longPressCallBack: (){
                taskData.deleteTask(task);
            },
          );
        }, itemCount: taskData.taskCount,);
      }
    );
  }
}