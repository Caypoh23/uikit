// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/icon_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightIconColors = _generatePaletteFromBrightness(Brightness.light);
final darkIconColors = _generatePaletteFromBrightness(Brightness.dark);

IconColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return IconColors(
      primary: Palette.gray.shade900,
      secondary: Palette.gray.shade400,
      tertiary: Palette.gray.shade200,
      success: Palette.green.shade500,
      warning: Palette.yellow.shade500,
      error: Palette.red.shade500,
      accent: Palette.blue.shade500,
      disable: Palette.gray[25]!,
      white: Palette.base[15]!,
      black: Palette.gray.shade900,
    );
  } else {
    return IconColors(
      primary: Palette.gray[15]!,
      secondary: Palette.gray[25]!,
      tertiary: Palette.gray.shade300,
      success: Palette.green.shade500,
      warning: Palette.yellow.shade500,
      error: Palette.red.shade500,
      accent: Palette.blue.shade400,
      disable: Palette.gray.shade500,
      white: Palette.base[15]!,
      black: Palette.gray.shade900,
    );
  }
}
