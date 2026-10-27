
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyAnimation()));
}

class MyAnimation extends StatefulWidget {
  @override
  State<MyAnimation> createState() => MyAnimationState();
}

class MyAnimationState extends State<MyAnimation> {
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              size = size == 100 ? 200 : 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: size,
            width: size,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
