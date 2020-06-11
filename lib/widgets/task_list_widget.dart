import 'package:flutter/material.dart';
import 'package:todoeyflutter/model/tasks_list.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TasksList>(context).taskList[index].name,
          isChecked: Provider.of<TasksList>(context).taskList[index].isDone,
          checkboxCallBack: (bool checkboxState) {
            Provider.of<TasksList>(context, listen: false).toggleDone(index);
            Provider.of<TasksList>(context, listen: false)
                .checkForIncompleteTasks();
          },
        );
      },
      itemCount: Provider.of<TasksList>(context).taskList.length,
    );
  }
}
