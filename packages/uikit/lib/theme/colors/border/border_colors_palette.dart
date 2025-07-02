// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/border/border_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightBorderColors = _generatePaletteFromBrightness(Brightness.light);
final darkBorderColors = _generatePaletteFromBrightness(Brightness.dark);

BorderColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return BorderColors(
      primary: Palette.gray[20]!,
      secondary: Palette.gray[40]!,
      muted: Palette.gray[20]!,
      info: Palette.cyan[60]!,
      error: Palette.red[70]!,
      warning: Palette.yellow[60]!,
      success: Palette.green[60]!,
      invert: Palette.gray[0]!,
    );
  } else {
    return BorderColors(
      primary: Palette.gray[20]!,
      secondary: Palette.gray[40]!,
      muted: Palette.gray[20]!,
      info: Palette.cyan[60]!,
      error: Palette.red[70]!,
      warning: Palette.yellow[60]!,
      success: Palette.green[60]!,
      invert: Palette.gray[0]!,
    );
  }
}
