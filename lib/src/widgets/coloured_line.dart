import 'package:flutter/material.dart';

class SBColouredLine extends StatelessWidget {
  final double height;
  final double width;
  const SBColouredLine(
      {Key? key, this.height = 4, this.width = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/coloured_line.png',
      package: 'senibara',
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
