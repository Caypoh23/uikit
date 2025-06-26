// Flutter imports:
import 'package:flutter/material.dart';

class BackgroundColors extends ThemeExtension<BackgroundColors> {
  const BackgroundColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.overlay,
    required this.mask,
    required this.success,
    required this.successPressed,
    required this.successDisable,
    required this.info,
    required this.infoPressed,
    required this.infoDisable,
    required this.warning,
    required this.warningPressed,
    required this.warningDisable,
    required this.error,
    required this.errorPressed,
    required this.errorDisable,
    required this.accent,
    required this.accentPressed,
    required this.accentDisable,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color overlay;
  final Color mask;
  final Color success;
  final Color successPressed;
  final Color successDisable;
  final Color info;
  final Color infoPressed;
  final Color infoDisable;
  final Color warning;
  final Color warningPressed;
  final Color warningDisable;
  final Color error;
  final Color errorPressed;
  final Color errorDisable;
  final Color accent;
  final Color accentPressed;
  final Color accentDisable;

  @override
  ThemeExtension<BackgroundColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? overlay,
    Color? mask,
    Color? success,
    Color? successPressed,
    Color? successDisable,
    Color? info,
    Color? infoPressed,
    Color? infoDisable,
    Color? warning,
    Color? warningPressed,
    Color? warningDisable,
    Color? error,
    Color? errorPressed,
    Color? errorDisable,
    Color? accent,
    Color? accentPressed,
    Color? accentDisable,
  }) =>
      BackgroundColors(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        overlay: overlay ?? this.overlay,
        mask: mask ?? this.mask,
        success: success ?? this.success,
        successPressed: successPressed ?? this.successPressed,
        successDisable: successDisable ?? this.successDisable,
        info: info ?? this.info,
        infoPressed: infoPressed ?? this.infoPressed,
        infoDisable: infoDisable ?? this.infoDisable,
        warning: warning ?? this.warning,
        warningPressed: warningPressed ?? this.warningPressed,
        warningDisable: warningDisable ?? this.warningDisable,
        error: error ?? this.error,
        errorPressed: errorPressed ?? this.errorPressed,
        errorDisable: errorDisable ?? this.errorDisable,
        accent: accent ?? this.accent,
        accentPressed: accentPressed ?? this.accentPressed,
        accentDisable: accentDisable ?? this.accentDisable,
      );

  @override
  ThemeExtension<BackgroundColors> lerp(
    covariant ThemeExtension<BackgroundColors>? other,
    double t,
  ) {
    if (other == null || other is! BackgroundColors) {
      return this;
    }
    return BackgroundColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      overlay: Color.lerp(overlay, other.overlay, t)!,
      mask: Color.lerp(mask, other.mask, t)!,
      success: Color.lerp(success, other.success, t)!,
      successPressed: Color.lerp(successPressed, other.successPressed, t)!,
      successDisable: Color.lerp(successDisable, other.successDisable, t)!,
      info: Color.lerp(info, other.info, t)!,
      infoPressed: Color.lerp(infoPressed, other.infoPressed, t)!,
      infoDisable: Color.lerp(infoDisable, other.infoDisable, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      warningPressed: Color.lerp(warningPressed, other.warningPressed, t)!,
      warningDisable: Color.lerp(warningDisable, other.warningDisable, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorPressed: Color.lerp(errorPressed, other.errorPressed, t)!,
      errorDisable: Color.lerp(errorDisable, other.errorDisable, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentPressed: Color.lerp(accentPressed, other.accentPressed, t)!,
      accentDisable: Color.lerp(accentDisable, other.accentDisable, t)!,
    );
  }
}
