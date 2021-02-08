import 'package:flutter/material.dart';
import 'package:roundONE/pages/timer_page.dart';

class StartButton extends StatefulWidget {
  final Duration countdown;

  StartButton({this.countdown});
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 80,
        icon: Icon(
          Icons.play_circle_outline,
          size: 80.0,
          color: Colors.red,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TimerPage(countdown: widget.countdown)));
        });
  }
}
