
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI")),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 100,
          color: Colors.green,
          child: Center(child: Text("Welcome")),
        ),
      ),
    );
  }
}
