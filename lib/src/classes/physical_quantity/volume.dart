enum SBVolumeUnit {
  teaspoon,
  tablespoon,
  cup,
  ounce,
  pint,
  quart,
  gallon,
  millilitre,
  centilitre,
  litre,
  cubicfoot,
  cubicinch,
  cubicmetre,
  usgallon,
  usquart,
  uspint,
  uscup,
  usounce,
  ustablespoon,
  usteaspoon,
}

class SBVolume {
  double? _volumeInMillilitre;

  SBVolume(SBVolumeUnit? unit, double? value) {
    unit == null || value == null
        ? _volumeInMillilitre = null
        : _volumeInMillilitre = value * conversionFactor[unit]!;
  }

  double? convert(SBVolumeUnit? toUnit) {
    return _volumeInMillilitre == null || toUnit == null
        ? null
        : _volumeInMillilitre! / conversionFactor[toUnit]!;
  }

///Lists the unit names
  static Map<SBVolumeUnit, String> get units => {
        SBVolumeUnit.teaspoon: 'tsp',
        SBVolumeUnit.tablespoon: 'tbsp',
        SBVolumeUnit.cup: 'c',
        SBVolumeUnit.ounce: 'oz',
        SBVolumeUnit.pint: 'pt',
        SBVolumeUnit.quart: 'qt',
        SBVolumeUnit.gallon: 'gal',
        SBVolumeUnit.millilitre: 'mL',
        SBVolumeUnit.centilitre: 'cL',
        SBVolumeUnit.litre: 'L',
        SBVolumeUnit.cubicfoot: 'ft3',
        SBVolumeUnit.cubicinch: 'in3',
        SBVolumeUnit.cubicmetre: 'm3',
        SBVolumeUnit.usgallon: 'gal.us',
        SBVolumeUnit.usquart: 'qt.us',
        SBVolumeUnit.uspint: 'pt.us',
        SBVolumeUnit.uscup: 'c.us',
        SBVolumeUnit.usounce: 'oz.us',
        SBVolumeUnit.ustablespoon: 'tbsp.us',
        SBVolumeUnit.usteaspoon: 'tsp.us',
      };
///How many millilitres there are in 1 of these units.
  static Map<SBVolumeUnit, double> get conversionFactor => {
        SBVolumeUnit.teaspoon: 5.91939,
        SBVolumeUnit.tablespoon: 17.7582,
        SBVolumeUnit.cup: 284.131,
        SBVolumeUnit.ounce: 28.4131,
        SBVolumeUnit.pint: 568.261,
        SBVolumeUnit.quart: 1136.52,
        SBVolumeUnit.gallon: 4546.09,
        SBVolumeUnit.millilitre: 1,
        SBVolumeUnit.centilitre: 10,
        SBVolumeUnit.litre: 1000,
        SBVolumeUnit.cubicfoot: 28316.8,
        SBVolumeUnit.cubicinch: 16.3871,
        SBVolumeUnit.cubicmetre: 1000000,
        SBVolumeUnit.usgallon: 3785.41,
        SBVolumeUnit.usquart: 946.353,
        SBVolumeUnit.uspint: 473.176,
        SBVolumeUnit.uscup: 240,
        SBVolumeUnit.usounce: 29.5735,
        SBVolumeUnit.ustablespoon: 14.7868,
        SBVolumeUnit.usteaspoon: 4.92892,
      };
}
