enum SBMassUnit {
  uston,
  ukton,
  pound,
  ounce,
  picogram,
  nanogram,
  microgram,
  milligram,
  gram,
  kilogram,
  tonne,
  megatonne,
  gigatonne
}

class SBMass {
  double? _massInGrams;

  SBMass(SBMassUnit? unit, double? value) {
    unit == null || value == null
        ? _massInGrams = null
        : _massInGrams = value * conversionFactor[unit]!;
  }

  double? convert(SBMassUnit? toUnit) {
    return _massInGrams == null || toUnit == null
        ? null
        : _massInGrams! / conversionFactor[toUnit]!;
  }

  ///Lists the units
  static Map<SBMassUnit, String> get units => {
        SBMassUnit.uston: 'ton(US)',
        SBMassUnit.ukton: 'ton(UK)',
        SBMassUnit.pound: 'lb',
        SBMassUnit.ounce: 'oz',
        SBMassUnit.picogram: 'pg',
        SBMassUnit.nanogram: 'ng',
        SBMassUnit.microgram: 'μg',
        SBMassUnit.milligram: 'mg',
        SBMassUnit.gram: 'g',
        SBMassUnit.kilogram: 'kg',
        SBMassUnit.tonne: 't',
        SBMassUnit.megatonne: 'Mt',
        SBMassUnit.gigatonne: 'Gt',
      };

  ///How many grams there are in 1 of these units.
  static Map<SBMassUnit, double> get conversionFactor => {
        SBMassUnit.uston: 0.000000907185,
        SBMassUnit.ukton: 0.000001016,
        SBMassUnit.pound: 453.59,
        SBMassUnit.ounce: 28.35,
        SBMassUnit.picogram: 0.000000000001,
        SBMassUnit.nanogram: 0.000000001,
        SBMassUnit.microgram: 0.000001,
        SBMassUnit.milligram: 0.001,
        SBMassUnit.gram: 1,
        SBMassUnit.kilogram: 1000,
        SBMassUnit.tonne: 1000000,
        SBMassUnit.megatonne: 1000000000000,
        SBMassUnit.gigatonne: 100000000000000
      };
}
