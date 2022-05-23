import 'dart:math';

import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

class SBColouredText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final List<Color>? colours;
  const SBColouredText({Key? key, required this.text, this.style, this.colours})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colours = this.colours ??
        [
          sbDesignOrange,
          sbDesignRed,
          sbDesignBlue,
          Colors.black
        ];
    return RichText(
      text: TextSpan(
          style: TextStyle(
              fontSize: style?.fontSize,
              fontWeight: style?.fontWeight ?? FontWeight.bold),
          children: text
              ?.split('')
              .map((e) => TextSpan(
                  text: e,
                  style: TextStyle(
                    color: colours[Random().nextInt(colours.length)],
                  )))
              .toList()),
    );
  }
}
