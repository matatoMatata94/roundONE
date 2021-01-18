import 'package:flutter/material.dart';
import 'package:roundONE/set_timer_page.dart';

void main() {
  runApp(MyApp());
}

//test
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SetTimerPage(),
    );
  }
}
