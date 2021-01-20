import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common_widgets/cupertino_time_picker_button.dart';

class SetTimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoundONE'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Icon(
                Icons.sports_mma_sharp,
                size: 70,
                color: Colors.black,
              ),
            ),
            Text('Round'),
            CupertinoTimePickerButton(),
          ],
        ),
      ),
    );
  }
}
