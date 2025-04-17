part of 'app_text_component.dart';

extension _String on String {
  bool get isBoldStyle {
    return contains('<b>') || contains(RegExp(r'\*.*\*'));
  }

  bool get isLinkStyle {
    return contains('<a>');
  }

  bool get isBulletedList {
    return contains('<li>');
  }
}
