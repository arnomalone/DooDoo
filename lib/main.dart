import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // textTheme: TextTheme(
        //   subtitle1: TextStyle(
        //     color: kLightColor,
        //   ),
        //
        // ),
      ),
      home: TasksScreen(),
    );
  }
}
