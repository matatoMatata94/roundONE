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
  Duration shownDuration;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        shownDuration
            .toString(), //TODO: Minuten und Sekunden werden falsch dargestellt
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
              });
            },
            minuteInterval: 1,
            mode: CupertinoTimerPickerMode.ms,
          ),
        );
      },
    );
  }
}
