
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyForm()));
}

class MyForm extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your name";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  formKey.currentState!.validate();
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
