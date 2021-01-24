import 'package:flutter/material.dart';

class StartButton extends StatefulWidget {
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  var started = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 80,
        icon: started
            ? Icon(
                Icons.pause_circle_outline,
                size: 80.0,
                color: Colors.red,
              )
            : Icon(
                Icons.play_circle_outline,
                size: 80.0,
                color: Colors.red,
              ),
        onPressed: () {
          setState(() {
            started = !started;
          });
        });
  }
}
