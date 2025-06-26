// Flutter imports:
import 'package:flutter/material.dart';

class ElementColors extends ThemeExtension<ElementColors> {
  const ElementColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.additional,
    required this.additionalTwo,
    required this.disable,
    required this.system,
    required this.contrastWhite,
    required this.contrastBlack,
    required this.success,
    required this.accent,
    required this.accentPressed,
    required this.accentDisable,
    required this.attention,
    required this.attentionPressed,
    required this.attentionDisable,
    required this.info,
    required this.error,
    required this.errorPressed,
    required this.errorDisable,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color additional;
  final Color additionalTwo;
  final Color disable;
  final Color system;
  final Color contrastWhite;
  final Color contrastBlack;
  final Color success;
  final Color accent;
  final Color accentPressed;
  final Color accentDisable;
  final Color attention;
  final Color attentionPressed;
  final Color attentionDisable;
  final Color info;
  final Color error;
  final Color errorPressed;
  final Color errorDisable;

  @override
  ThemeExtension<ElementColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? additional,
    Color? additionalTwo,
    Color? disable,
    Color? system,
    Color? contrastWhite,
    Color? contrastBlack,
    Color? success,
    Color? accent,
    Color? accentPressed,
    Color? accentDisable,
    Color? attention,
    Color? attentionPressed,
    Color? attentionDisable,
    Color? info,
    Color? error,
    Color? errorPressed,
    Color? errorDisable,
  }) =>
      ElementColors(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        additional: additional ?? this.additional,
        additionalTwo: additionalTwo ?? this.additionalTwo,
        disable: disable ?? this.disable,
        system: system ?? this.system,
        contrastWhite: contrastWhite ?? this.contrastWhite,
        contrastBlack: contrastBlack ?? this.contrastBlack,
        success: success ?? this.success,
        accent: accent ?? this.accent,
        accentPressed: accentPressed ?? this.accentPressed,
        accentDisable: accentDisable ?? this.accentDisable,
        attention: attention ?? this.attention,
        attentionPressed: attentionPressed ?? this.attentionPressed,
        attentionDisable: attentionDisable ?? this.attentionDisable,
        info: info ?? this.info,
        error: error ?? this.error,
        errorPressed: errorPressed ?? this.errorPressed,
        errorDisable: errorDisable ?? this.errorDisable,
      );

  @override
  ThemeExtension<ElementColors> lerp(
    covariant ThemeExtension<ElementColors>? other,
    double t,
  ) {
    if (other == null || other is! ElementColors) {
      return this;
    }
    return ElementColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      additional: Color.lerp(additional, other.additional, t)!,
      additionalTwo: Color.lerp(additionalTwo, other.additionalTwo, t)!,
      disable: Color.lerp(disable, other.disable, t)!,
      system: Color.lerp(system, other.system, t)!,
      contrastWhite: Color.lerp(contrastWhite, other.contrastWhite, t)!,
      contrastBlack: Color.lerp(contrastBlack, other.contrastBlack, t)!,
      success: Color.lerp(success, other.success, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentPressed: Color.lerp(accentPressed, other.accentPressed, t)!,
      accentDisable: Color.lerp(accentDisable, other.accentDisable, t)!,
      attention: Color.lerp(attention, other.attention, t)!,
      attentionPressed:
          Color.lerp(attentionPressed, other.attentionPressed, t)!,
      attentionDisable:
          Color.lerp(attentionDisable, other.attentionDisable, t)!,
      info: Color.lerp(info, other.info, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorPressed: Color.lerp(errorPressed, other.errorPressed, t)!,
      errorDisable: Color.lerp(errorDisable, other.errorDisable, t)!,
    );
  }
}
