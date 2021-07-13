import 'package:flutter/material.dart';
import 'package:proj/todoApp/data/dummy_data.dart';
import 'package:proj/todoApp/wedjets/task_item.dart';

class AllTasksPage extends StatelessWidget {
  Function deleteFun;
  Function updateFun;
  AllTasksPage(this.deleteFun, this.updateFun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Data.tasks.isEmpty
        ? Center(
            child: Text('No Products Found'),
          )
        : ListView.builder(
            itemCount: Data.tasks.length,
            itemBuilder: (context, index) {
              return TaskItem(
                Data.tasks[index],
                deleteFun: deleteFun,
                updateFun: updateFun,
              );
            });
  }
}
