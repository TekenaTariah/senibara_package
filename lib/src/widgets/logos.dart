import 'package:flutter/material.dart';
import 'package:senibara/src/data/app_data.dart';
import 'package:senibara/src/data/enums.dart';

class SBLogo extends StatelessWidget {
  final SBLogoOrientation? orientation;
  final double? height;

  SBLogo({Key? key, this.orientation, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      orientation == SBLogoOrientation.horizontal
          ? 'assets/logos/logo-ht.png'
          : orientation == SBLogoOrientation.vertical
              ? 'assets/logos/logo-vt.png'
              : 'assets/logos/logo-st.png',
      package: 'senibara',
      height: height ?? SBData.defaultLogoHeight,
    );
  }
}
