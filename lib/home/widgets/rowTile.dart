import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowTile extends StatelessWidget {
  final String title;

  const RowTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SvgPicture.asset("assets/svg/Star.svg"),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "ClashGrotesk",
                  fontSize: 13,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}