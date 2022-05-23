import 'package:flutter/material.dart';
import 'package:senibara/senibara.dart';

abstract class SBAppData {
  String get appLogo;
  BoxDecoration get appDecoration;
  List<SBDrawerContent> get appDrawerContents;
}
