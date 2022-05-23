import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

class SBMoreIcon extends StatelessWidget {
  final SBOrientation orientation;
  final double? size;
  static const double defaultSize = 24;
  const SBMoreIcon({Key? key, required this.orientation, this.size})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colours = [sbDesignOrange, sbDesignRed, sbDesignBlue];
    return Container(
      margin: const EdgeInsets.all(8),
      height: size,
      width: size,
      child: orientation == SBOrientation.horizontal
          ? Row(
              children: List.from(colours.map((e) => _SBMoreDot(
                    color: e,
                    parentSize: size ?? defaultSize,
                  ))))
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.from(colours.map((e) => _SBMoreDot(
                    color: e,
                    parentSize: size ?? defaultSize,
                  )))),
    );
  }
}

class _SBMoreDot extends StatelessWidget {
  final Color color;
  final double parentSize;
  const _SBMoreDot({Key? key, required this.color, required this.parentSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      height: parentSize / 4,
      width: parentSize / 4,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(parentSize / 4))),
    );
  }
}
