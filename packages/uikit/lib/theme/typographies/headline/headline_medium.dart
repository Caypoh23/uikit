// Flutter imports:
import 'package:flutter/material.dart';

class HeadlineMedium extends ThemeExtension<HeadlineMedium> {
  const HeadlineMedium({
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
  ThemeExtension<HeadlineMedium> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return HeadlineMedium(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<HeadlineMedium> lerp(
    covariant ThemeExtension<HeadlineMedium>? other,
    double t,
  ) {
    if (other == null || other is! HeadlineMedium) return this;
    return HeadlineMedium(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
