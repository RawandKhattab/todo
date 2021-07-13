import 'package:flutter/material.dart';
import 'package:proj/todoApp/models/task_model.dart';

class TaskItem extends StatelessWidget {
  Task task;
  Function deleteFun;
  Function updateFun;
  TaskItem(this.task, {required this.deleteFun, required this.updateFun});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: task.isComplete ? Colors.green : Colors.pink,
      ),
      child: ListTile(
        leading: IconButton(
            onPressed: () {
              this.deleteFun(task);
            },
            icon: Icon(Icons.delete)),
        trailing: Checkbox(
            value: task.isComplete,
            onChanged: (value) {
              this.updateFun(task);
            }),
        title: Text(task.title),
      ),
    );
  }
}
