import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? colors;
  final TextAlign? alignment;
  final TextOverflow? textOverflow;
  final TextDecoration? decoration;

  AppLabel({
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.colors,
    this.alignment,
    this.textOverflow,
    this.decoration,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colors,
         decoration: decoration, 
      ),
      textAlign: alignment,
      overflow: textOverflow,
    );
  }
}
