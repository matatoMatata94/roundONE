import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common_widgets/cupertino_time_picker_button.dart';
import 'common_widgets/number_picker_button.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.alarm_sharp,
                    size: 70,
                    color: Colors.red,
                  ),
                ),
                Text('COUNTDOWN'),
                CupertinoTimePickerButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Transform.rotate(
                      angle: 180 * pi / 120,
                      child: Icon(
                        Icons.sports_mma_sharp,
                        size: 80,
                        color: Colors.red,
                      ),
                    )),
                Text('ROUND'),
                CupertinoTimePickerButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.looks_one_rounded,
                    size: 80,
                    color: Colors.red,
                  ),
                ),
                Text('ROUNDS'),
                NumberPickerButton(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Icon(
                    Icons.motion_photos_pause_rounded,
                    size: 80,
                    color: Colors.red,
                  ),
                ),
                Text('PAUSE'),
                CupertinoTimePickerButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
