// ignore_for_file: camel_case_types

import 'package:senibara/src/data/data.dart';

var sbUselessUtils = 'Useless Utils by sb';

class sbStringUtils {
  static String toCamelCase(String? text) {
    if (text == null) return '';

    text = text.toLowerCase();

    var result = '';
    var chars = text.split('');
    chars.asMap().forEach((index, char) {
      if (index == 0 || !alphabets.contains(chars[index - 1])) {
        result += char.toUpperCase();
      } else {
        result += char;
      }
    });

    return result;
  }
}

class sbNumberUtils {
  static double changeToDecimal(int number) {
    return number.toDouble();
  }
}
