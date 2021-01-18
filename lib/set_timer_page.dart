import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetTimerPage extends StatelessWidget {
  Duration newDuration;

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
            Text(newDuration.toString()),
            //TODO: Transfer button in own file and use it in set_timer_state-file
            MaterialButton(
              child: Text(
                "Time picked",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.redAccent,
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                      height: MediaQuery.of(context).copyWith().size.height / 2,
                      child: CupertinoTimerPicker(
                        onTimerDurationChanged: (Duration newDuration) {
                          print(newDuration);
                        },
                        minuteInterval: 1,
                        mode: CupertinoTimerPickerMode.ms,
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
