import 'package:flutter/material.dart';
import 'package:roundONE/pages/timer_page.dart';

class StartButton extends StatelessWidget {
  final Duration countdown;

  StartButton({this.countdown});

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
          print(countdown);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TimerPage(countdown: countdown)));
        });
  }
}
