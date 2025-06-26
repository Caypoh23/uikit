// Flutter imports:
import 'package:flutter/material.dart';

class IconColors extends ThemeExtension<IconColors> {
  const IconColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.success,
    required this.warning,
    required this.error,
    required this.accent,
    required this.disable,
    required this.white,
    required this.black,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color success;
  final Color warning;
  final Color error;
  final Color accent;
  final Color disable;
  final Color white;
  final Color black;

  @override
  ThemeExtension<IconColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? success,
    Color? warning,
    Color? error,
    Color? accent,
    Color? disable,
    Color? white,
    Color? black,
  }) =>
      IconColors(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        success: success ?? this.success,
        warning: warning ?? this.warning,
        error: error ?? this.error,
        accent: accent ?? this.accent,
        disable: disable ?? this.disable,
        white: white ?? this.white,
        black: black ?? this.black,
      );

  @override
  ThemeExtension<IconColors> lerp(
    covariant ThemeExtension<IconColors>? other,
    double t,
  ) {
    if (other == null || other is! IconColors) {
      return this;
    }
    return IconColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      disable: Color.lerp(disable, other.disable, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
    );
  }
}
