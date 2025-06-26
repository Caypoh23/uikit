// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/border_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightBorderColors = _generatePaletteFromBrightness(Brightness.light);
final darkBorderColors = _generatePaletteFromBrightness(Brightness.dark);

BorderColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return BorderColors(
      primary: Palette.gray.shade200,
      secondary: Palette.gray.shade100,
      tertiary: Palette.gray[50]!,
      focus: Palette.blue.shade500,
      success: Palette.green.shade500,
      warning: Palette.yellow.shade500,
      error: Palette.red.shade500,
      accent: Palette.blue.shade500,
      disable: Palette.gray[25]!,
    );
  } else {
    return BorderColors(
      primary: Palette.gray.shade700,
      secondary: Palette.gray.shade800,
      tertiary: Palette.gray.shade900,
      focus: Palette.blue.shade400,
      success: Palette.green.shade500,
      warning: Palette.yellow.shade500,
      error: Palette.red.shade500,
      accent: Palette.blue.shade400,
      disable: Palette.gray.shade600,
    );
  }
}
