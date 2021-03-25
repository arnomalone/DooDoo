import 'package:doodoo_flutter/model/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'constants.dart';
import 'package:provider/provider.dart';
import 'package:doodoo_flutter/model/tasks_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TasksData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          // textTheme: TextTheme(
          //   subtitle1: TextStyle(
          //     color: kLightColor,
          //   ),
          //
          // ),
        ),
        home: TasksScreen(),
      ),
    );
  }
}
