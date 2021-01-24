import 'dart:math';
import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    Key key,
    @required this.icon,
    this.iconSize,
    this.iconColor,
    this.iconAngle,
    @required this.text,
    @required this.button,
  }) : super(key: key);

  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final int iconAngle;
  final String text;
  final Widget button;
  final double padding = 10;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.all(padding),
          child: Transform.rotate(
            angle: 180 * pi / (iconAngle == null ? 90 : iconAngle),
            child: Icon(
              icon,
              size: iconSize == null ? 70 : iconSize,
              color: iconColor == null ? Colors.red : iconColor,
            ),
          ),
        ),
        SizedBox(
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
          width: 100,
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: button,
        ),
      ],
    );
  }
}
