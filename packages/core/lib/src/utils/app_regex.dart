final class AppRegRex {
  static RegExp get defaultNameRegex => RegExp(
        '[bcdfghjlklmnpqrstvwxzBCDFGHJLKLMNPQRSTVWXZ]{5,}|[yY]{3,}|[hH]{3,}|[jJ]{2,}|[oO]{3,}|[iI]{4,}|[aA]{3,}|[eE]{3,}|[uU]{2,}|[gG]{3,}|[pP]{3,}|[bB]{3,}|[cC]{3,}|[fF]{3,}|[lL]{3,}|[sS]{3,}|[tT]{3,}|[vV]{2,}|[xX]{2,}|[kK]{3,}|[mM]{3,}|[nN]{3,}|[zZ]{3,}|[0-9]',
      );
  static RegExp get latinName => RegExp(r"^[A-Za-zÀ-ÖØ-öø-ÿ\s'-]+$");
}
