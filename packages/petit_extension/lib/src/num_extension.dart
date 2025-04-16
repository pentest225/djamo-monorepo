extension PetitNumExtension on num {
  double trimToDouble({int fractionDigits = 15}) {
    final value = toDouble();
    // Convert the double to a string
    var strValue = value.toString();

    // If there's a decimal point, trim trailing zeros
    if (strValue.contains('.')) {
      strValue = strValue.replaceAll(RegExp(r'0*$'), ''); // Remove trailing zeros
      strValue = strValue.replaceAll(RegExp(r'\.$'), ''); // Remove the decimal point if no decimals remain
    }
    return double.tryParse(strValue) ?? value;
  }
}
