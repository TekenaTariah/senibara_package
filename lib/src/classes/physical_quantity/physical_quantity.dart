import 'package:senibara/senibara.dart';

class PhysicalQuantity {
  PhysicalQuantity._();

  static String getUnit(String unit) {
    for (var element in SBMass.units.entries) {
      if (element.key.name == unit) return element.value;
    }
    for (var element in SBVolume.units.entries) {
      if (element.key.name == unit) return element.value;
    }
    return unit;
  }
}
