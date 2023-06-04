
import 'package:azkar/model/Task.dart';
import 'package:flutter/cupertino.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'سبحان الله 33 مرة'),
    Task(name: 'الحمد لله 33 مرة'),
    Task(name: 'الله و أكبر 33 مرة'),
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
