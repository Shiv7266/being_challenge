import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String svg;
  const TitleWidget({super.key, required this.title, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/svg/$svg.svg"),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: "ClashGrotesk",
              fontSize: 18,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}