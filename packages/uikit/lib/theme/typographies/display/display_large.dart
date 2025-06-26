// Flutter imports:
import 'package:flutter/material.dart';

class DisplayLarge extends ThemeExtension<DisplayLarge> {
  const DisplayLarge({
    required this.regular,
    required this.medium,
    required this.semibold,
    required this.bold,
  });

  final TextStyle regular;
  final TextStyle medium;
  final TextStyle semibold;
  final TextStyle bold;

  @override
  ThemeExtension<DisplayLarge> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return DisplayLarge(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<DisplayLarge> lerp(
    covariant ThemeExtension<DisplayLarge>? other,
    double t,
  ) {
    if (other == null || other is! DisplayLarge) return this;
    return DisplayLarge(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
