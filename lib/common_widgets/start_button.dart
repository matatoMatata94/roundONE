import 'package:flutter/material.dart';
import 'package:roundONE/pages/timer_page.dart';

class StartButton extends StatelessWidget {
  StartButton({
    this.countdownBeforeRound,
    this.durationOfaRound,
    this.numberOfRounds,
    this.durationOfaPause,
  });

  final Duration countdownBeforeRound;
  final Duration durationOfaRound;
  final int numberOfRounds;
  final Duration durationOfaPause;

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
          print("startbutton(countdownBeforeRound): $countdownBeforeRound");
          print("startbutton(duratioinOfaPause): $durationOfaPause");
          print("startbutton(durationOfaRound): $durationOfaRound");
          print("startbutton(numberOfRounds): $numberOfRounds");
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TimerPage(
                    countdownBeforeRound: countdownBeforeRound,
                    durationOfaRound: durationOfaRound,
                    durationOfaPause: durationOfaPause,
                    numberOfRounds: numberOfRounds,
                  )));
        });
  }
}
