import 'package:flutter/material.dart';
import 'package:proj/todoApp/page1.dart';
import 'package:proj/todoApp/pagess/all_tasks.dart';
import 'package:proj/todoApp/pagess/complete_tasks.dart';
import 'package:proj/todoApp/pagess/inComplete_tasks.dart';

import 'data/dummy_data.dart';
import 'models/task_model.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  deleteTask(Task task) {
    Data.tasks.remove(task);
    setState(() {});
  }

  updateTask(Task task) {
    task.isComplete = !task.isComplete;
    int index = Data.tasks.indexOf(task);
    Data.tasks[index] = task;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TODO APP'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return page1();
                  }));
                },
                icon: Icon(Icons.add_circle))
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('All Tasks'),
              ),
              Tab(
                child: Text('Complete Tasks'),
              ),
              Tab(
                child: Text('InComplete Tasks'),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          AllTasksPage(deleteTask, updateTask),
          CompleteTasksPage(deleteTask, updateTask),
          InCompleteTasksPage(deleteTask, updateTask)
        ]),
      ),
    );
  }
}
