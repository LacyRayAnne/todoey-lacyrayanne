import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'model/tasks_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksList>(
      create: (context) => TasksList(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
