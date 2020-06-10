import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:todoeyflutter/model/task.dart';

class TasksList extends StatelessWidget {
  TasksList({this.tasks, this.isDoneCallBack});
  final Function isDoneCallBack;
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallBack: (bool checkboxState) {
            isDoneCallBack(checkboxState, index);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
