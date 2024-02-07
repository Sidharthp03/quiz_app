import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen/question_screen.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Questionscreen(),
      //home: ResultScreen()
    );
  }
}
