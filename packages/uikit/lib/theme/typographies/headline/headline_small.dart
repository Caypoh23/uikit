// Flutter imports:
import 'package:flutter/material.dart';

class HeadlineSmall extends ThemeExtension<HeadlineSmall> {
  const HeadlineSmall({
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
  ThemeExtension<HeadlineSmall> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semibold,
    TextStyle? bold,
  }) {
    return HeadlineSmall(
      regular: regular ?? this.regular,
      medium: medium ?? this.medium,
      semibold: semibold ?? this.semibold,
      bold: bold ?? this.bold,
    );
  }

  @override
  ThemeExtension<HeadlineSmall> lerp(
    covariant ThemeExtension<HeadlineSmall>? other,
    double t,
  ) {
    if (other == null || other is! HeadlineSmall) return this;
    return HeadlineSmall(
      regular: TextStyle.lerp(regular, other.regular, t)!,
      medium: TextStyle.lerp(medium, other.medium, t)!,
      semibold: TextStyle.lerp(semibold, other.semibold, t)!,
      bold: TextStyle.lerp(bold, other.bold, t)!,
    );
  }
}
