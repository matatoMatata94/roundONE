import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:roundONE/common_widgets/number_picker_button.dart';
// import 'cupertino_time_picker_button.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    Key key,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.iconAngle,
    this.text,
    this.button,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final int iconAngle;
  final String text;
  final Widget button;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: Transform.rotate(
            angle: 180 * pi / iconAngle,
            child: Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
          ),
        ),
        Text(text),
        button,
      ],
    );
  }
}
