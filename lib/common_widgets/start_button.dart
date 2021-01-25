import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:roundONE/pages/timer_page.dart';
import 'package:transition/transition.dart';

class StartButton extends StatefulWidget {
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  var started = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 110,
        icon: started
            ? Icon(
                Icons.pause_circle_outline,
                color: Colors.red,
              )
            : Icon(
                Icons.play_circle_outline,
                color: Colors.red,
              ),
        onPressed: () {
          Navigator.push(context, ConcentricPageRoute(builder: (ctx) {
            return TimerPage();
          }));
          setState(() {
            started = !started;
          });
        });
  }
}
