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
  gigatonne,
}

class SBMass {
  SBMass(SBMassUnit unit, double value) {
    setMass(unit, value);
  }

  late final double _massInGrams;

  SBMassUnit defaultFrom = SBMassUnit.gram;
  SBMassUnit defaultTo = SBMassUnit.kilogram;

  static const Map<SBMassUnit, String> units = {
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

  double convert(SBMassUnit toUnit) {
    switch (toUnit) {
      case SBMassUnit.uston:
        return uston;
      case SBMassUnit.ukton:
        return ukton;
      case SBMassUnit.pound:
        return pound;
      case SBMassUnit.ounce:
        return ounce;
      case SBMassUnit.picogram:
        return picogram;
      case SBMassUnit.nanogram:
        return nanogram;
      case SBMassUnit.microgram:
        return microgram;
      case SBMassUnit.milligram:
        return milligram;
      case SBMassUnit.gram:
        return gram;
      case SBMassUnit.kilogram:
        return kilogram;
      case SBMassUnit.tonne:
        return tonne;
      case SBMassUnit.megatonne:
        return megatonne;
      case SBMassUnit.gigatonne:
        return gigatonne;
    }
  }

  double get uston => _massInGrams / 907185;
  double get ukton => _massInGrams / 1016000;
  double get pound => _massInGrams / 453.59;
  double get ounce => _massInGrams / 28.35;
  double get picogram => _massInGrams / 0.000000000001;
  double get nanogram => _massInGrams / 0.000000001;
  double get microgram => _massInGrams / 0.000001;
  double get milligram => _massInGrams / 0.001;
  double get gram => _massInGrams;
  double get kilogram => _massInGrams / 1000;
  double get tonne => _massInGrams / 1000000;
  double get megatonne => _massInGrams / 1000000000000;
  double get gigatonne => _massInGrams / 1000000000000000;

  void setMass(unit, value) {
    switch (unit) {
      case SBMassUnit.uston:
        _massInGrams = value * 0.000000907185;
        break;
      case SBMassUnit.ukton:
        _massInGrams = value * 0.000001016;
        break;
      case SBMassUnit.pound:
        _massInGrams = value * 453.59;
        break;
      case SBMassUnit.ounce:
        _massInGrams = value * 28.35;
        break;
      case SBMassUnit.picogram:
        _massInGrams = value * 0.000000000001;
        break;
      case SBMassUnit.nanogram:
        _massInGrams = value * 0.000000001;
        break;
      case SBMassUnit.microgram:
        _massInGrams = value * 0.000001;
        break;
      case SBMassUnit.milligram:
        _massInGrams = value * 0.001;
        break;
      case SBMassUnit.gram:
        _massInGrams = value;
        break;
      case SBMassUnit.kilogram:
        _massInGrams = value * 1000;
        break;
      case SBMassUnit.tonne:
        _massInGrams = value * 1000000;
        break;
      case SBMassUnit.megatonne:
        _massInGrams = value * 1000000000000;
        break;
      case SBMassUnit.gigatonne:
        _massInGrams = value * 1000000000000000;
        break;
    }
  }
}
