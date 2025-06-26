// Flutter imports:
import 'package:flutter/material.dart';

class BorderColors extends ThemeExtension<BorderColors> {
  const BorderColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.focus,
    required this.success,
    required this.warning,
    required this.error,
    required this.accent,
    required this.disable,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color focus;
  final Color success;
  final Color warning;
  final Color error;
  final Color accent;
  final Color disable;

  @override
  ThemeExtension<BorderColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? focus,
    Color? success,
    Color? warning,
    Color? error,
    Color? accent,
    Color? disable,
  }) =>
      BorderColors(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        focus: focus ?? this.focus,
        success: success ?? this.success,
        warning: warning ?? this.warning,
        error: error ?? this.error,
        accent: accent ?? this.accent,
        disable: disable ?? this.disable,
      );

  @override
  ThemeExtension<BorderColors> lerp(
    covariant ThemeExtension<BorderColors>? other,
    double t,
  ) {
    if (other == null || other is! BorderColors) {
      return this;
    }
    return BorderColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      focus: Color.lerp(focus, other.focus, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      disable: Color.lerp(disable, other.disable, t)!,
    );
  }
}
