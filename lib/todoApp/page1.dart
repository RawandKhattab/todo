import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  @override
  _page1 createState() => _page1();
}

class _page1 extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New '),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: [
            RaisedButton(
              color: Colors.red, // background
              textColor: Colors.white, // foreground
              onPressed: () {},
              child: Text('Send'),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter subject',
                hintStyle: TextStyle(color: Colors.pink[800], fontSize: 20),

              ),
              style: TextStyle(color: Colors.pink[800], fontSize: 20),
            ),
            //  Checkbox(
            // value: task.isComplete,
            // onChanged: (value) {
            //   this.updateFun(task);
            // }),
          ],
        ));
  }
}
