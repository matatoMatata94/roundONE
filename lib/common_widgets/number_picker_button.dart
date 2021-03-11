import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';

class NumberPickerButton extends StatefulWidget {
  NumberPickerButton({
    this.numberOfRounds,
    this.onChanged,
  });
  final numberOfRounds;
  final ValueChanged<int> onChanged;
  @override
  _NumberPickerButtonState createState() => _NumberPickerButtonState();
}

class _NumberPickerButtonState extends State<NumberPickerButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        widget.numberOfRounds == null ? '0' : widget.numberOfRounds.toString(),
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
      onPressed: () {
        _numberSetter(context, widget.numberOfRounds);
      },
    );
  }

  Future _numberSetter(BuildContext context, int shownnumber) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SpinBox(
                min: 1,
                max: 12,
                value: 0,
                spacing: 24,
                textStyle: TextStyle(fontSize: 50),
                direction: Axis.vertical,
                incrementIcon: Icon(Icons.keyboard_arrow_up, size: 64),
                decrementIcon: Icon(Icons.keyboard_arrow_down, size: 64),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(24),
                ),
                onChanged: (value) {
                  setState(() {
                    value.toInt();
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
