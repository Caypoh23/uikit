// Flutter imports:
import 'package:flutter/material.dart';

class TitleSmall extends ThemeExtension<TitleSmall> {
  const TitleSmall({
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
  ThemeExtension<TitleSmall> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return TitleSmall(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<TitleSmall> lerp(
    covariant ThemeExtension<TitleSmall>? other,
    double t,
  ) {
    if (other == null || other is! TitleSmall) return this;
    return TitleSmall(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
