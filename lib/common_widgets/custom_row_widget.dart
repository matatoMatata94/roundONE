import 'dart:math';
import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.button,
    this.iconSize = 90,
    this.iconColor = Colors.red,
    this.iconAngle = 90,
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
            angle: 180 * pi / iconAngle,
            child: Icon(
              icon,
              size: iconSize,
              color: iconColor,
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
