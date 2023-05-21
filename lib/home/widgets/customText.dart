import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight? fontWeight;
  const CustomText(
      {super.key,
      required this.title,
      required this.color,
      required this.fontSize,
      this.fontWeight = FontWeight.w500});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color,
          fontFamily: "ClashGrotesk",
          fontSize: fontSize,
          letterSpacing: 0.2,
          fontWeight: fontWeight),
    );
  }
}
