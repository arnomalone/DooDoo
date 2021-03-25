import 'package:flutter/cupertino.dart';
import 'package:doodoo_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:doodoo_flutter/model/task.dart';
import 'package:provider/provider.dart';
import 'package:doodoo_flutter/model/tasks_data.dart';

class BottomContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String taskText;
    return Container(
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
        color: kDarkColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              onChanged: (String value) {
                taskText = value;
              },
              autofocus: true,
              cursorColor: kLightColor, 
              style: TextStyle(
                color: kLightColor,
              ),
              decoration: InputDecoration(
                hintText: 'Add a new task',
                hintStyle: TextStyle(
                  color: kLightColor,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              onPressed: () {
                if(taskText!=null)
                  {
                    Provider.of<TasksData>(context).addTask(taskText);
                    Navigator.pop(context);
                  }
              },
              child: Text(
                  'Add'
              ),
              color: kLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
