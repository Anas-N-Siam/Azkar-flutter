import 'package:azkar/Screen/Tasks/add_task_screen.dart';
import 'package:azkar/model/Task.dart';
import 'package:azkar/model/Task_Data.dart';
import 'package:azkar/widget/task_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              appBar: AppBar(
                foregroundColor: Colors.white,
                backgroundColor: Colors.tealAccent[700],
                title: const Text("التنبيهات اليومية"),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'MainScreen');
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddTaskScreen((newTaskTitle) {
                          // setState(() {
                          //   tasks.add(Task(name: newTaskTitle));
                          //   Navigator.pop(context);
                          // });
                        }),
                      ),
                    ),
                  );
                },
                backgroundColor: const Color.fromARGB(255, 10, 50, 49),
                child: const Icon(Icons.add),
              ),
              backgroundColor: Colors.white,
              body: Container(
                color: Colors.tealAccent,
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 20,
                  bottom: 80,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.playlist_add_check,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'إدارة التنبيهات اليومية',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: TasksList(),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
