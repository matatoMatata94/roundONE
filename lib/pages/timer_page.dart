import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  TimerPage({
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
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIMER'),
      ),
      body: Center(
        child: CircularCountDownTimer(
          duration: widget.countdownBeforeRound.inSeconds,
          controller: CountDownController(),
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.grey[300],
          fillColor: Colors.redAccent[200],
          backgroundColor: Colors.red[600],
          strokeWidth: 50.0,
          strokeCap: StrokeCap.round,
          textStyle: TextStyle(
              fontSize: 80.0, color: Colors.white, fontWeight: FontWeight.bold),
          textFormat: CountdownTextFormat.MM_SS,
          isReverse: true,
          isReverseAnimation: true,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            print('Countdown Started');
          },
          onComplete: () {
            print('Countdown Ended');
          },
        ),
      ),
    );
  }
}
