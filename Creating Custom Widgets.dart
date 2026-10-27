
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("My Widgets")),
      body: Column(
        children: [
          Text("Hello Flutter"),
          Container(
            height: 50,
            width: 100,
            color: Colors.blue,
          ),
          Icon(Icons.star),
          ElevatedButton(
            onPressed: () {},
            child: Text("Click Me"),
          ),
        ],
      ),
    ),
  ));
}
