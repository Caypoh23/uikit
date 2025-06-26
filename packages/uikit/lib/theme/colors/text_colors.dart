// Flutter imports:
import 'package:flutter/material.dart';

class TextColors extends ThemeExtension<TextColors> {
  const TextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.placeholder,
    required this.mask,
    required this.hint,
    required this.disable,
    required this.white,
    required this.black,
    required this.success,
    required this.accent,
    required this.accentPressed,
    required this.accentDisable,
    required this.warning,
    required this.warningPressed,
    required this.warningDisable,
    required this.error,
    required this.errorPressed,
    required this.errorDisable,
    required this.link,
    required this.linkPressed,
    required this.linkDisable,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color placeholder;
  final Color mask;
  final Color hint;
  final Color disable;
  final Color white;
  final Color black;
  final Color success;
  final Color accent;
  final Color accentPressed;
  final Color accentDisable;
  final Color warning;
  final Color warningPressed;
  final Color warningDisable;
  final Color error;
  final Color errorPressed;
  final Color errorDisable;
  final Color link;
  final Color linkPressed;
  final Color linkDisable;

  @override
  ThemeExtension<TextColors> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? placeholder,
    Color? mask,
    Color? hint,
    Color? disable,
    Color? white,
    Color? black,
    Color? success,
    Color? accent,
    Color? accentPressed,
    Color? accentDisable,
    Color? warning,
    Color? warningPressed,
    Color? warningDisable,
    Color? error,
    Color? errorPressed,
    Color? errorDisable,
    Color? link,
    Color? linkPressed,
    Color? linkDisable,
  }) =>
      TextColors(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        tertiary: tertiary ?? this.tertiary,
        placeholder: placeholder ?? this.placeholder,
        mask: mask ?? this.mask,
        hint: hint ?? this.hint,
        disable: disable ?? this.disable,
        white: white ?? this.white,
        black: black ?? this.black,
        success: success ?? this.success,
        accent: accent ?? this.accent,
        accentPressed: accentPressed ?? this.accentPressed,
        accentDisable: accentDisable ?? this.accentDisable,
        warning: warning ?? this.warning,
        warningPressed: warningPressed ?? this.warningPressed,
        warningDisable: warningDisable ?? this.warningDisable,
        error: error ?? this.error,
        errorPressed: errorPressed ?? this.errorPressed,
        errorDisable: errorDisable ?? this.errorDisable,
        link: link ?? this.link,
        linkPressed: linkPressed ?? this.linkPressed,
        linkDisable: linkDisable ?? this.linkDisable,
      );

  @override
  ThemeExtension<TextColors> lerp(
    covariant ThemeExtension<TextColors>? other,
    double t,
  ) {
    if (other == null || other is! TextColors) {
      return this;
    }
    return TextColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      placeholder: Color.lerp(placeholder, other.placeholder, t)!,
      mask: Color.lerp(mask, other.mask, t)!,
      hint: Color.lerp(hint, other.hint, t)!,
      disable: Color.lerp(disable, other.disable, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      success: Color.lerp(success, other.success, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentPressed: Color.lerp(accentPressed, other.accentPressed, t)!,
      accentDisable: Color.lerp(accentDisable, other.accentDisable, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      warningPressed: Color.lerp(warningPressed, other.warningPressed, t)!,
      warningDisable: Color.lerp(warningDisable, other.warningDisable, t)!,
      error: Color.lerp(error, other.error, t)!,
      errorPressed: Color.lerp(errorPressed, other.errorPressed, t)!,
      errorDisable: Color.lerp(errorDisable, other.errorDisable, t)!,
      link: Color.lerp(link, other.link, t)!,
      linkPressed: Color.lerp(linkPressed, other.linkPressed, t)!,
      linkDisable: Color.lerp(linkDisable, other.linkDisable, t)!,
    );
  }
}
