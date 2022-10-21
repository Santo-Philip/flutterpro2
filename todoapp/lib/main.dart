import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/screens/home.dart';
void main() {
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Color.fromARGB(0, 189, 69, 69)));
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To-Do App",
      home: Home(),
    );
  }
}
