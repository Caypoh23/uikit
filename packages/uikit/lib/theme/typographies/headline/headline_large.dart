// Flutter imports:
import 'package:flutter/material.dart';

class HeadlineLarge extends ThemeExtension<HeadlineLarge> {
  const HeadlineLarge({
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
  ThemeExtension<HeadlineLarge> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return HeadlineLarge(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<HeadlineLarge> lerp(
    covariant ThemeExtension<HeadlineLarge>? other,
    double t,
  ) {
    if (other == null || other is! HeadlineLarge) return this;
    return HeadlineLarge(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
