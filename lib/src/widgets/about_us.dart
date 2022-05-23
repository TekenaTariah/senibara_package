import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

class SBAboutUs extends StatelessWidget {
  const SBAboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(SBData.companyFullName)),
    );
  }
}
