import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doodoo_flutter/constants.dart';

TextEditingController textEditingController = TextEditingController();

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String name;
  final Function checkboxCallback;

  TaskTile({this.isChecked, this.name, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          color: kLightColor,
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: kLightColor,
        checkColor: kDarkColor,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
