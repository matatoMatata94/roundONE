import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNumberPickerButton extends StatelessWidget {
  CupertinoNumberPickerButton({
    this.onChanged,
  });

  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    String passedValue;
    return MaterialButton(
      child: Text(
        passedValue == null ? '0' : passedValue,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
      onPressed: () {
        _cupertinoNumberSetter(context);
        passedValue = onChanged.toString();
      },
    );
  }

  Future _cupertinoNumberSetter(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
          height: MediaQuery.of(context).size.height / 2,
          child: CupertinoPicker.builder(
            childCount: 13,
            itemExtent: 30,
            onSelectedItemChanged: onChanged,
            itemBuilder: _buildNumberWidget,
          ),
        );
      },
    );
  }

  Widget _buildNumberWidget(BuildContext context, int index) {
    return Column(
      children: [
        Text('$index'),
        SizedBox(height: 5),
      ],
    );
  }
}
