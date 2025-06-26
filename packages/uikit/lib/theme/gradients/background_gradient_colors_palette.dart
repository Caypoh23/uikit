// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/background_gradient_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightBackgroundGradientColors =
    _generatePaletteFromBrightness(Brightness.light);
final darkBackgroundGradientColors =
    _generatePaletteFromBrightness(Brightness.dark);

BackgroundGradientColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return BackgroundGradientColors(
      primaryStart: Palette.purple[15]!,
      primaryEnd: Palette.blue[15]!,
      secondaryStart: Palette.base[15]!,
      secondaryEnd: Palette.gray[15]!,
      accentStart: Palette.purple[400]!,
      accentEnd: Palette.blue[500]!,
    );
  } else {
    return BackgroundGradientColors(
      primaryStart: Palette.purple.shade900,
      primaryEnd: Palette.blue.shade900,
      secondaryStart: Palette.gray.shade900,
      secondaryEnd: Palette.gray.shade800,
      accentStart: Palette.purple.shade700,
      accentEnd: Palette.blue.shade700,
    );
  }
}
