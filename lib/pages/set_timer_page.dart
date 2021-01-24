import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundONE/common_widgets/custom_row_widget.dart';
import 'package:roundONE/common_widgets/start_button.dart';

import '../common_widgets/cupertino_time_picker_button.dart';
import '../common_widgets/number_picker_button.dart';

class SetTimerPage extends StatelessWidget {
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
            CustomRowWidget(
              icon: Icons.alarm_sharp,
              text: 'COUNTDOWN',
              button: CupertinoTimePickerButton(),
            ),
            CustomRowWidget(
              icon: Icons.sports_mma_sharp,
              iconAngle: 120,
              text: 'ROUND',
              button: CupertinoTimePickerButton(),
            ),
            CustomRowWidget(
              icon: Icons.looks_one_rounded,
              text: 'ROUNDS',
              button: NumberPickerButton(),
            ),
            CustomRowWidget(
              icon: Icons.motion_photos_pause_rounded,
              text: 'PAUSE',
              button: CupertinoTimePickerButton(),
            ),
            StartButton(),
          ],
        ),
      ),
    );
  }
}
