import 'package:to_do_app/Models/TaskModel.dart';
import 'package:flutter/cupertino.dart';

// This model gets changed, so it is needed to make ChangeNotifier
class TodoModel extends ChangeNotifier {
  List<TaskModel> taskList = []; //Contains all the task

  addTaskInList() {
    TaskModel taskModel = TaskModel(
      "title ${taskList.length}",
      "this is the task detail",
    );

    taskList.add(taskModel);

    notifyListeners();
  }
}
