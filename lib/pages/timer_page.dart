import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  final Duration countdown;

  TimerPage({this.countdown});

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIMER'),
      ),
      body: Container(child: CircularCountDownTimer()),
    );
  }
}
