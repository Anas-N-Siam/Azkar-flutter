import 'package:azkar/model/Task_Data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTaskScreen(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('إضافة تنبيه جديد',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold,
              )),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text('إضافة'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
            ),
          ),
        ],
      ),
    );
  }
}
