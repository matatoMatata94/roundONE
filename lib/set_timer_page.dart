import 'package:flutter/material.dart';

class SetTimerPage extends StatefulWidget {
  @override
  _SetTimerState createState() => _SetTimerState();
}

class _SetTimerState extends State<SetTimerPage> {
  int _setCountdownMin = 1;
  int _setCountdownSec = 0;

  int _timeSetter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RoundONE'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          OutlinedButton(
            child: Text('$_setCountdownMin:$_setCountdownSec'),
            onPressed: () {},
          ),
          OutlinedButton(child: Text('Round Time'), onPressed: () {}),
          OutlinedButton(child: Text('Pause Time'), onPressed: () {}),
          OutlinedButton(child: Text('Rounds'), onPressed: () {}),
        ],
      ),
    );
  }
}
