import 'package:flutter/foundation.dart';
import 'task.dart';

class TasksList extends ChangeNotifier {
  List<Task> taskList = [];
  int incompleteTasks = 0;

  void add(Task task) {
    taskList.add(task);
    notifyListeners();
  }

  void toggleDone(index) {
    taskList[index].isDone = !taskList[index].isDone;
    notifyListeners();
  }

  void checkForIncompleteTasks() {
    incompleteTasks = 0;
    for (Task task in taskList) {
      if (task.isDone != true) {
        incompleteTasks++;
      }
    }
    notifyListeners();
  }
}
