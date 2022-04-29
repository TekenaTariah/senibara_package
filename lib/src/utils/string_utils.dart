import 'package:senibara/src/data/app_data.dart';

/// Offers methods that can be run on strings
///
/// [toCamelCase] takes a string and converts it to camel case.
/// Non String characters are taking as a mark for 'camelling'
/// The method makes use of data
/// ```dart
/// var inputText='senibara';
/// print(SBStringUtils.toCamelCase(inputText));
/// ```
class SBStringUtils {
  static String toCamelCase(String? text) {
    if (text == null) return '';

    text = text.toLowerCase();

    var result = '';
    var chars = text.split('');
    chars.asMap().forEach((index, char) {
      if (index == 0 || !SBAppData.alphabets.contains(chars[index - 1])) {
        result += char.toUpperCase();
      } else {
        result += char;
      }
    });

    return result;
  }
}

class SBNumberUtils {
  static double changeToDecimal(int number) {
    return number.toDouble();
  }
}
