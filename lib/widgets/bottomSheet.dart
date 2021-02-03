import 'package:flutter/cupertino.dart';
import 'package:doodoo_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BottomContainer extends StatelessWidget {

  final Function addTaskCallback;

  BottomContainer({this.addTaskCallback});

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
                if(taskText!=null) addTaskCallback(taskText);
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
