// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/toast_gradient_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightToastGradientColors =
    _generatePaletteFromBrightness(Brightness.light);
final darkToastGradientColors = _generatePaletteFromBrightness(Brightness.dark);

ToastGradientColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ToastGradientColors(
      grayStart: Palette.gray[15]!,
      grayEnd: Palette.base[25]!,
    );
  } else {
    return ToastGradientColors(
      grayStart: Palette.gray.shade700,
      grayEnd: Palette.base.shade600,
    );
  }
}
