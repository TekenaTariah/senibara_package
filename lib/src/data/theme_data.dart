// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:senibara/senibara.dart';

const sbBlue = Color(0xff1a6adb);
const sbSwatch = MaterialColor(0xff1a6adb, swatch);
const sbDesignOrange = Color(0xffff7a00);
const sbDesignRed = Color(0xff7a0000);
const sbDesignBlue = Color(0xff00007a);

///32 Bit Int value for sbDesignOrange
const sbDesignOrangeInt = 4294932992;

///32 Bit Int value for sbDesignRed
const sbDesignRedInt = 4286185472;

///32 Bit Int value for sbDesignBlue
const sbDesignBlueInt = 4278190202;

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
  appBarTheme: AppBarTheme(
      toolbarHeight: SBData.toolbarHeight,
      centerTitle: true,
      backgroundColor: Colors.grey.shade100,
      iconTheme: const IconThemeData(color: Colors.black),
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: sbBlue)),
  primarySwatch: sbSwatch,
  textTheme: GoogleFonts.robotoTextTheme(Typography.blackCupertino).apply(
    bodyColor: Colors.grey.shade900,
    displayColor: Colors.grey.shade900,
  ),
  fontFamily: 'Roboto_Slab',
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
  bottomSheetTheme: BottomSheetThemeData(),
  buttonBarTheme: null,
  canvasColor: null,
  cardColor: null,
  cardTheme: null,
  checkboxTheme: null,
  chipTheme: null,
  dataTableTheme: null,
  dialogBackgroundColor: null,
  dialogTheme: DialogTheme(),
  disabledColor: null,
  dividerTheme: null,
  drawerTheme: null,
  elevatedButtonTheme: null,
  errorColor: null,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.grey.shade300,
    enableFeedback: true,
  ),
  focusColor: null,
  highlightColor: null,
  hintColor: null,
  hoverColor: null,
  iconTheme: null,
  indicatorColor: null,
  inputDecorationTheme: null,
  listTileTheme: const ListTileThemeData(
    dense: true,
    contentPadding: EdgeInsets.zero,
  ),
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
  tooltipTheme: const TooltipThemeData(preferBelow: false),
  typography: null,
  unselectedWidgetColor: null,
  useMaterial3: null,
  visualDensity: VisualDensity.comfortable,
);
final SBDesignThemeData = SBThemeData.copyWith(
    textTheme: GoogleFonts.robotoSlabTextTheme(Typography.blackCupertino).apply(
  bodyColor: Colors.grey.shade900,
  displayColor: Colors.grey.shade900,
));
//todo: Fully customise SB Theme Data
// todo: for ios text theme, include
// '''<key>com.apple.security.network.client</key>
//    <true/>'''
