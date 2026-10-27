
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Student()));
}

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Card")),
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Name: Swathi"),
                Text("Course: B.Tech"),
                Text("Year: 3rd Year"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
