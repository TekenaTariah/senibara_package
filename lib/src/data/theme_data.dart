// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class SBThemeData {
  static ThemeData fromContext(BuildContext context) {
    return ThemeData(
      appBarTheme: Theme.of(context).appBarTheme.copyWith(
          toolbarHeight: SBData.toolbarHeight,
          backgroundColor: Colors.grey.shade100,
          titleTextStyle: Theme.of(context)
              .textTheme
              .headline6
              ?.apply(color: Colors.grey.shade900),
          iconTheme: IconThemeData(color: Colors.grey.shade900),
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: sbBlue)),
      primarySwatch: sbSwatch,
      // textTheme: Theme.of(context).textTheme.apply(
      //       fontSizeFactor: 1.1,
      //       fontSizeDelta: 2.0,
      //     ),
      fontFamily: null,
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
      bottomSheetTheme: const BottomSheetThemeData(),
      buttonBarTheme: null,
      canvasColor: null,
      cardColor: null,
      cardTheme: null,
      checkboxTheme: null,
      chipTheme: null,
      dataTableTheme: const DataTableThemeData(),
      dialogBackgroundColor: null,
      dialogTheme: const DialogTheme(),
      disabledColor: null,
      dividerTheme: null,
      drawerTheme: const DrawerThemeData(width: 250),
      elevatedButtonTheme: null,
      errorColor: null,
      floatingActionButtonTheme: null,
      focusColor: null,
      highlightColor: null,
      hintColor: null,
      hoverColor: null,
      iconTheme: null,
      indicatorColor: null,
      inputDecorationTheme: null,
      listTileTheme: Theme.of(context).listTileTheme.copyWith(
            // dense: true,
            // contentPadding: EdgeInsets.zero,
            style: null,
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
  }
}

//todo: Fully customise SB Theme Data
// todo: for ios text theme, include
// '''<key>com.apple.security.network.client</key>
//    <true/>'''
