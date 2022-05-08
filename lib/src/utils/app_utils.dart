import 'package:senibara/src/data/app_data.dart';

/// Offers methods that can be run on strings
class SBUtils {
  SBUtils._();

  /// [toCamelCase] takes a string and converts it to camel case.
  /// Non String characters are taking as a mark for 'camelling'
  /// The method makes use of data
  /// ```dart
  /// var inputText='senibara';
  /// print(SBStringUtils.toCamelCase(inputText));
  /// ```
  static String toCamelCase(String? text) {
    if (text == null) return '';

    text = text.toLowerCase();

    var result = '';
    var chars = text.split('');
    chars.asMap().forEach((index, char) {
      if (index == 0 || !SBData.alphabets.contains(chars[index - 1])) {
        result += char.toUpperCase();
      } else {
        result += char;
      }
    });

    return result;
  }

  static String toTitleCase(String? text) {
    if (text == null) return '';
    if (text.length == 1) return text.toUpperCase();
    return text.substring(0, 1).toUpperCase() + text.substring(1).toLowerCase();
  }
}
