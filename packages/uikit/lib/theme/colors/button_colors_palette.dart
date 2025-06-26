// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/button_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightButtonColors = _generatePaletteFromBrightness(Brightness.light);
final darkButtonColors = _generatePaletteFromBrightness(Brightness.dark);

ButtonColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ButtonColors(
      primary: Palette.blue.shade500,
      primaryPressed: Palette.blue.shade600,
      primaryDisable: Palette.blue[25]!,
      secondary: Palette.gray[15]!,
      secondaryPressed: Palette.gray[25]!,
      secondaryDisable: Palette.gray[50]!,
      tertiary: Palette.base[15]!,
      tertiaryPressed: Palette.gray[15]!,
      tertiaryDisable: Palette.gray[25]!,
      inverted: Palette.blue.shade500,
      invertedPressed: Palette.blue.shade600,
      invertedDisable: Palette.blue[25]!,
      positive: Palette.yellow.shade500,
      positivePressed: Palette.yellow.shade600,
      positiveDisable: Palette.yellow[25]!,
      negative: Palette.red.shade500,
      negativePressed: Palette.red.shade600,
      negativeDisable: Palette.red[25]!,
      ghost: Palette.blue.shade500,
      ghostPressed: Palette.blue.shade600,
      ghostDisable: Palette.blue[25]!,
    );
  } else {
    return ButtonColors(
      primary: Palette.blue.shade500,
      primaryPressed: Palette.blue.shade600,
      primaryDisable: Palette.blue.shade700,
      secondary: Palette.gray.shade800,
      secondaryPressed: Palette.gray.shade700,
      secondaryDisable: Palette.gray.shade900,
      tertiary: Palette.gray.shade900,
      tertiaryPressed: Palette.gray.shade800,
      tertiaryDisable: Palette.gray.shade700,
      inverted: Palette.blue.shade500,
      invertedPressed: Palette.blue.shade600,
      invertedDisable: Palette.blue.shade700,
      ghost: Palette.blue.shade400,
      ghostPressed: Palette.blue.shade500,
      ghostDisable: Palette.blue.shade600,
      positive: Palette.yellow.shade500,
      positivePressed: Palette.yellow.shade600,
      positiveDisable: Palette.yellow.shade700,
      negative: Palette.red.shade500,
      negativePressed: Palette.red.shade600,
      negativeDisable: Palette.red.shade700,
    );
  }
}
