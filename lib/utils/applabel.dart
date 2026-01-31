import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? colors;
  final TextAlign? alignment;
  final TextOverflow? textOverflow;

  AppLabel({
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.colors,
    this.alignment,
    this.textOverflow,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colors,
      ),
      textAlign: alignment,
    );
  }
}
