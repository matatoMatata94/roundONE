import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimePickerButton extends StatefulWidget {
  const CupertinoTimePickerButton({
    Key key,
  }) : super(key: key);

  @override
  _CupertinoTimePickerButtonState createState() =>
      _CupertinoTimePickerButtonState();
}

class _CupertinoTimePickerButtonState extends State<CupertinoTimePickerButton> {
  Duration shownDuration = Duration(seconds: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        _formatDuration(shownDuration),
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
            onTimerDurationChanged: (Duration newDuration) {
              setState(() {
                shownDuration = newDuration;
                return shownDuration;
              });
            },
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
