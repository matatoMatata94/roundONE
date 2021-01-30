import 'package:flutter/material.dart';
import 'package:roundONE/pages/timer_page.dart';
import 'package:transition/transition.dart';
import '../common_widgets/number_picker_button.dart';

class StartButton extends StatefulWidget {
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  var started = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: 110,
        icon: Icon(
          Icons.play_circle_outline,
          color: Colors.red,
        ),
        onPressed: () {
          transition();

          setState(() {
            started = !started;
          });
        });
  }

  transition() {
    Navigator.push(
      context,
      Transition(
              child: TimerPage(),
              transitionEffect: TransitionEffect.bottomToTop)
          .builder(),
    );
  }
}
