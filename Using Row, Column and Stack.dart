
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Layouts")),
      body: Column(
        children: [
          Row(
            children: [
              Text("Hello"),
              Text(" Flutter"),
            ],
          ),
          Text("Second Line"),
          Stack(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Text("Box"),
            ],
          ),
        ],
      ),
    ),
  ));
}
