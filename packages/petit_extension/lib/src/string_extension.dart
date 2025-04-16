extension PetitNullableStringExtension on String? {
  String? get orNull {
    if (this != null && this!.isEmpty) {
      return null;
    }
    return this;
  }

  bool get isValidUrl {
    if (this == null) {
      return false;
    }
    final url = this!;
    final pattern = RegExp(
      r'^(http|https)://[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)+([/?].*)?$',
    );
    return pattern.hasMatch(url);
  }

  bool get isSvgUrl {
    if (!isValidUrl) {
      return false;
    }
    final url = this!;
    return url.toLowerCase().endsWith('.svg');
  }

  String concat(String other, {String separator = ''}) {
    if (orNull == null) {
      return other;
    }
    return '$this$separator$other';
  }

  bool get isEuroIsoCode => this == 'EUR';
}
