part of 'app_prospectus_reader_view.dart';

extension _String on String {
  bool get isBoldStyle {
    return contains('<b>');
  }

  bool get isLinkStyle {
    return contains('<a>');
  }

  bool get isBulletedList {
    return contains('<li>');
  }
}
