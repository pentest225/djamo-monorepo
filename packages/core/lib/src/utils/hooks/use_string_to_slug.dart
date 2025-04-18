/// Converts a string to a slug.
String useStringToSlug(String input) {
  return input.toLowerCase().replaceAll(RegExp('[^a-z0-9]+'), '_').replaceAll(RegExp(r'^-+|-+$'), '');
}
