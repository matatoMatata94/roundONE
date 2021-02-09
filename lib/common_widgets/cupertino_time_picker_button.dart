import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimePickerButton extends StatelessWidget {
  CupertinoTimePickerButton({
    this.passedValue,
    this.onChanged,
  });

  final Duration passedValue;
  final ValueChanged<Duration> onChanged;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        _formatDuration(passedValue),
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
      onPressed: () {
        _cupertinoTimeSetter(context);
      },
    );
  }

  Future _cupertinoTimeSetter(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 2,
          child: CupertinoTimerPicker(
            onTimerDurationChanged: this.onChanged,
            minuteInterval: 1,
            secondInterval: 5,
            mode: CupertinoTimerPickerMode.ms,
          ),
        );
      },
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
