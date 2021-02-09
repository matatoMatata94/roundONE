import 'package:circular_countdown_timer/circular_countdown_timer.dart';
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
    print(widget.countdown);
    return Scaffold(
      appBar: AppBar(
        title: Text('TIMER'),
      ),
      body: CircularCountDownTimer(
        duration: 80,
        controller: CountDownController(),
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.grey[300],
        fillColor: Colors.purpleAccent[100],
        backgroundColor: Colors.purple[500],
        strokeWidth: 20.0,
        strokeCap: StrokeCap.round,
        textStyle: TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
        textFormat: CountdownTextFormat.MM_SS,
        isReverse: true,
        isReverseAnimation: true,
        isTimerTextShown: true,
        autoStart: true,
        onStart: () {
          print('Angekommen ist: ${widget.countdown}');
          print('Countdown Started');
        },
        onComplete: () {
          print('Countdown Ended');
        },
      ),
    );
  }
}
