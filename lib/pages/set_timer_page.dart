import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundONE/common_widgets/custom_row_widget.dart';
import 'package:roundONE/common_widgets/start_button.dart';

import '../common_widgets/cupertino_time_picker_button.dart';
import '../common_widgets/number_picker_button.dart';

class SetTimerPage extends StatefulWidget {
  @override
  _SetTimerPageState createState() => _SetTimerPageState();
}

class _SetTimerPageState extends State<SetTimerPage> {
  Duration countdownBeforeRound;
  Duration durationOfRound;
  int numberOfRounds;
  Duration durationOfPause;

  @override
  void initState() {
    super.initState();
    countdownBeforeRound = Duration(minutes: 0, seconds: 0);
    durationOfRound = Duration(minutes: 0, seconds: 0);
    numberOfRounds = 0;
    durationOfPause = Duration(minutes: 0, seconds: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoundONE'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildCountdownRow(countdownBeforeRound),
            buildDurationOfRoundRow(durationOfRound),
            buildNumberOfRoundsRow(numberOfRounds),
            buildDurationOfPauseRow(durationOfPause),
            StartButton(
              countdownBeforeRound: countdownBeforeRound,
              durationOfaRound: durationOfRound,
              numberOfRounds: numberOfRounds,
              durationOfaPause: durationOfPause,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCountdownRow(Duration countdownBeforeRound) {
    return CustomRowWidget(
      icon: Icons.alarm_sharp,
      text: 'COUNTDOWN',
      button: CupertinoTimePickerButton(
        passedValue: countdownBeforeRound,
        onChanged: (Duration duration) {
          setState(() {
            this.countdownBeforeRound = duration;
          });
        },
      ),
    );
  }

  Widget buildDurationOfRoundRow(Duration durationOfRound) {
    return CustomRowWidget(
      icon: Icons.sports_mma_sharp,
      iconAngle: 120,
      text: 'ROUND',
      button: CupertinoTimePickerButton(
        passedValue: durationOfRound,
        onChanged: (Duration duration) {
          setState(() {
            this.durationOfRound = duration;
          });
        },
      ),
    );
  }

  Widget buildNumberOfRoundsRow(int numberOfRounds) {
    return CustomRowWidget(
      icon: Icons.looks_one_rounded,
      text: 'ROUNDS',
      button: NumberPickerButton(
        numberOfRounds: numberOfRounds,
      ),
    );
  }

  Widget buildDurationOfPauseRow(Duration durationOfPause) {
    return CustomRowWidget(
      icon: Icons.motion_photos_pause_rounded,
      text: 'PAUSE',
      button: CupertinoTimePickerButton(
        passedValue: durationOfPause,
        onChanged: (Duration duration) {
          setState(() {
            this.durationOfPause = duration;
          });
        },
      ),
    );
  }
}
