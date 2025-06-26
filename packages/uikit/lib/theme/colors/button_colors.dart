// Flutter imports:
import 'package:flutter/material.dart';

class ButtonColors extends ThemeExtension<ButtonColors> {
  const ButtonColors({
    required this.primary,
    required this.primaryPressed,
    required this.primaryDisable,
    required this.secondary,
    required this.secondaryPressed,
    required this.secondaryDisable,
    required this.tertiary,
    required this.tertiaryPressed,
    required this.tertiaryDisable,
    required this.inverted,
    required this.invertedPressed,
    required this.invertedDisable,
    required this.ghost,
    required this.ghostPressed,
    required this.ghostDisable,
    required this.positive,
    required this.positivePressed,
    required this.positiveDisable,
    required this.negative,
    required this.negativePressed,
    required this.negativeDisable,
  });

  final Color primary;
  final Color primaryPressed;
  final Color primaryDisable;

  final Color secondary;
  final Color secondaryPressed;
  final Color secondaryDisable;

  final Color tertiary;
  final Color tertiaryPressed;
  final Color tertiaryDisable;

  final Color inverted;
  final Color invertedPressed;
  final Color invertedDisable;

  final Color ghost;
  final Color ghostPressed;
  final Color ghostDisable;

  final Color positive;
  final Color positivePressed;
  final Color positiveDisable;

  final Color negative;
  final Color negativePressed;
  final Color negativeDisable;

  @override
  ThemeExtension<ButtonColors> copyWith({
    Color? primary,
    Color? primaryPressed,
    Color? primaryDisable,
    Color? secondary,
    Color? secondaryPressed,
    Color? secondaryDisable,
    Color? tertiary,
    Color? tertiaryPressed,
    Color? tertiaryDisable,
    Color? inverted,
    Color? invertedPressed,
    Color? invertedDisable,
    Color? ghost,
    Color? ghostPressed,
    Color? ghostDisable,
    Color? positive,
    Color? positivePressed,
    Color? positiveDisable,
    Color? negative,
    Color? negativePressed,
    Color? negativeDisable,
  }) =>
      ButtonColors(
        primary: primary ?? this.primary,
        primaryPressed: primaryPressed ?? this.primaryPressed,
        primaryDisable: primaryDisable ?? this.primaryDisable,
        secondary: secondary ?? this.secondary,
        secondaryPressed: secondaryPressed ?? this.secondaryPressed,
        secondaryDisable: secondaryDisable ?? this.secondaryDisable,
        tertiary: tertiary ?? this.tertiary,
        tertiaryPressed: tertiaryPressed ?? this.tertiaryPressed,
        tertiaryDisable: tertiaryDisable ?? this.tertiaryDisable,
        inverted: inverted ?? this.inverted,
        invertedPressed: invertedPressed ?? this.invertedPressed,
        invertedDisable: invertedDisable ?? this.invertedDisable,
        positive: positive ?? this.positive,
        positivePressed: positivePressed ?? this.positivePressed,
        positiveDisable: positiveDisable ?? this.positiveDisable,
        negative: negative ?? this.negative,
        negativePressed: negativePressed ?? this.negativePressed,
        negativeDisable: negativeDisable ?? this.negativeDisable,
        ghost: ghost ?? this.ghost,
        ghostPressed: ghostPressed ?? this.ghostPressed,
        ghostDisable: ghostDisable ?? this.ghostDisable,
      );

  @override
  ThemeExtension<ButtonColors> lerp(
    covariant ThemeExtension<ButtonColors>? other,
    double t,
  ) {
    if (other == null || other is! ButtonColors) {
      return this;
    }
    return ButtonColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryPressed: Color.lerp(primaryPressed, other.primaryPressed, t)!,
      primaryDisable: Color.lerp(primaryDisable, other.primaryDisable, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryPressed:
          Color.lerp(secondaryPressed, other.secondaryPressed, t)!,
      secondaryDisable:
          Color.lerp(secondaryDisable, other.secondaryDisable, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      tertiaryPressed: Color.lerp(tertiaryPressed, other.tertiaryPressed, t)!,
      tertiaryDisable: Color.lerp(tertiaryDisable, other.tertiaryDisable, t)!,
      inverted: Color.lerp(inverted, other.inverted, t)!,
      invertedPressed: Color.lerp(invertedPressed, other.invertedPressed, t)!,
      invertedDisable: Color.lerp(invertedDisable, other.invertedDisable, t)!,
      ghost: Color.lerp(ghost, other.ghost, t)!,
      ghostPressed: Color.lerp(ghostPressed, other.ghostPressed, t)!,
      ghostDisable: Color.lerp(ghostDisable, other.ghostDisable, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      positivePressed: Color.lerp(positivePressed, other.positivePressed, t)!,
      positiveDisable: Color.lerp(positiveDisable, other.positiveDisable, t)!,
      negative: Color.lerp(negative, other.negative, t)!,
      negativePressed: Color.lerp(negativePressed, other.negativePressed, t)!,
      negativeDisable: Color.lerp(negativeDisable, other.negativeDisable, t)!,
    );
  }
}
