import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberPickerButton extends StatefulWidget {
  @override
  _NumberPickerButtonState createState() => _NumberPickerButtonState();
}

class _NumberPickerButtonState extends State<NumberPickerButton> {
  int shownNumber;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        shownNumber == null ? '?' : shownNumber,
        style: TextStyle(color: Colors.white),
      ),
      color: Colors.redAccent,
      onPressed: () {
        _numberSetter(context);
      },
    );
  }

  Future _numberSetter(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 2,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextFormField(
                decoration: InputDecoration(labelText: "How many Rounds: "),
                keyboardType: TextInputType.phone,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ],
          ),
        );
      },
    );
  }
}
