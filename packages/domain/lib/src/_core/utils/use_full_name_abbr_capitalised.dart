import 'package:dartx/dartx.dart';

String useFullNameAbbrCapitalised({
  required String lastName,
  required String firstName,
}) {
  String abbrLastName() {
    try {
      return "${lastName.split("").first.toUpperCase()}.";
    } catch (_) {}
    return '';
  }

  String firstProfileFirstName() {
    try {
      return firstName.split(' ').first;
    } catch (_) {}
    return firstName;
  }

  return '${firstProfileFirstName().toLowerCase().capitalize()} ${abbrLastName()}'.trim();
}
