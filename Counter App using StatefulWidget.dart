
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Counter()));
}

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$count"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
