import 'package:flutter/material.dart';

class SBDialogTitle extends StatelessWidget {
  final String title;
  const SBDialogTitle({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Image.asset('assets/logos/logo.png', height: 35),
      ],
    );
  }
}
