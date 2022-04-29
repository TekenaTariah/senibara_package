// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senibara/senibara.dart';

const sbBlue = Color(0xff1a6adb);
const sbSwatch = MaterialColor(0xff1a6adb, swatch);
const sbDesignOrange = Color(0xffff7a00);
const sbDesignRed = Color(0xff7a0000);
const sbDesignBlue = Color(0xff00007a);

const Map<int, Color> swatch = {
  900: Color.fromRGBO(26, 106, 219, 1),
  800: Color.fromRGBO(26, 106, 219, .9),
  700: Color.fromRGBO(26, 106, 219, .8),
  300: Color.fromRGBO(26, 106, 219, .4),
  400: Color.fromRGBO(26, 106, 219, .5),
  500: Color.fromRGBO(26, 106, 219, .6),
  600: Color.fromRGBO(26, 106, 219, .7),
  200: Color.fromRGBO(26, 106, 219, .3),
  100: Color.fromRGBO(26, 106, 219, .2),
  50: Color.fromRGBO(26, 106, 219, .1),
};

final SBThemeData = ThemeData(
  appBarTheme: const AppBarTheme(toolbarHeight: SBAppData.toolbarHeight,),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.grey),
  listTileTheme:
      const ListTileThemeData(dense: true, contentPadding: EdgeInsets.zero),
  primarySwatch: sbSwatch,
  textTheme: GoogleFonts.robotoSlabTextTheme(Typography.blackCupertino).apply(
    bodyColor: Colors.grey.shade900,
    displayColor: Colors.grey.shade900,
  ),
  progressIndicatorTheme: null,
  pageTransitionsTheme: null,
  popupMenuTheme: null,
  applyElevationOverlayColor: null,
  backgroundColor: null,
  brightness: null,
  buttonTheme: null,
  colorScheme: null,
  dividerColor: null,
  bannerTheme: null,
  bottomAppBarColor: null,
  bottomAppBarTheme: null,
  bottomNavigationBarTheme: null,
  bottomSheetTheme: null,
  buttonBarTheme: null,
  canvasColor: null,
  cardColor: null,
  cardTheme: null,
  checkboxTheme: null,
  chipTheme: null,
  dataTableTheme: null,
  dialogBackgroundColor: null,
  dialogTheme: null,
  disabledColor: null,
  dividerTheme: null,
  drawerTheme: null,
  elevatedButtonTheme: null,
  errorColor: null,
  focusColor: null,
  highlightColor: null,
  hintColor: null,
  hoverColor: null,
  iconTheme: null,
  indicatorColor: null,
  inputDecorationTheme: null,
  materialTapTargetSize: null,
  navigationBarTheme: null,
  navigationRailTheme: null,
  outlinedButtonTheme: null,
  platform: null,
  primaryColor: null,
  primaryColorDark: null,
  primaryColorLight: null,
  primaryIconTheme: null,
  primaryTextTheme: null,
  radioTheme: null,
  scaffoldBackgroundColor: null,
  scrollbarTheme: null,
  secondaryHeaderColor: null,
  selectedRowColor: null,
  shadowColor: null,
  sliderTheme: null,
  snackBarTheme: null,
  splashColor: null,
  splashFactory: null,
  switchTheme: null,
  tabBarTheme: null,
  textButtonTheme: null,
  textSelectionTheme: null,
  timePickerTheme: null,
  toggleButtonsTheme: null,
  toggleableActiveColor: null,
  tooltipTheme: null,
  typography: null,
  unselectedWidgetColor: null,
  useMaterial3: null,
  visualDensity: null,
);

//todo: Fully customise SB Theme Data
// todo: for ios text theme, include
// '''<key>com.apple.security.network.client</key>
//    <true/>'''
