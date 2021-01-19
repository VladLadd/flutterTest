import 'package:flutter/material.dart';
import './screens/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddNote(),
    );
  }
}

// закончил на уроке 24 - https://www.youtube.com/watch?v=UmKe98FvnvI&list=PLyaYkfwvXhRKjYAIO4_J_IcHtAXUR_1ci&index=24
