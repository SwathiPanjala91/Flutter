
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyAnimation()));
}

class MyAnimation extends StatefulWidget {
  @override
  State<MyAnimation> createState() => MyAnimationState();
}

class MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade Animation")),
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Text("Hello Flutter"),
        ),
      ),
    );
  }
}
