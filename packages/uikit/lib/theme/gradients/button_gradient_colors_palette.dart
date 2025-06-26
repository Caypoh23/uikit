// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/button_gradient_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightButtonGradientColors =
    _generatePaletteFromBrightness(Brightness.light);
final darkButtonGradientColors =
    _generatePaletteFromBrightness(Brightness.dark);

ButtonGradientColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ButtonGradientColors(
      primaryStart: Palette.blue[400]!,
      primaryEnd: Palette.blue[500]!,
      secondaryStart: Palette.gray[15]!,
      secondaryEnd: Palette.gray[25]!,
      successStart: Palette.green[400]!,
      successEnd: Palette.green[500]!,
    );
  } else {
    return ButtonGradientColors(
      primaryStart: Palette.blue.shade700,
      primaryEnd: Palette.blue.shade900,
      secondaryStart: Palette.gray.shade800,
      secondaryEnd: Palette.gray.shade700,
      successStart: Palette.green.shade700,
      successEnd: Palette.green.shade900,
    );
  }
}
