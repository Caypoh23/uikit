// Flutter imports:
import 'package:flutter/material.dart';

class TitleMedium extends ThemeExtension<TitleMedium> {
  const TitleMedium({
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
  ThemeExtension<TitleMedium> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return TitleMedium(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<TitleMedium> lerp(
    covariant ThemeExtension<TitleMedium>? other,
    double t,
  ) {
    if (other == null || other is! TitleMedium) return this;
    return TitleMedium(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
