// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/background_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightBackgroundColors = _generatePaletteFromBrightness(Brightness.light);
final darkBackgroundColors = _generatePaletteFromBrightness(Brightness.dark);

BackgroundColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return BackgroundColors(
      primary: Palette.base[15]!,
      secondary: Palette.gray[15]!,
      tertiary: Palette.gray[25]!,
      overlay: Palette.base[25]!,
      mask: Palette.base[100]!,
      success: Palette.green[15]!,
      successPressed: Palette.green[25]!,
      successDisable: Palette.green[50]!,
      info: Palette.blue[15]!,
      infoPressed: Palette.blue[25]!,
      infoDisable: Palette.blue[50]!,
      warning: Palette.yellow[15]!,
      warningPressed: Palette.yellow[25]!,
      warningDisable: Palette.yellow[50]!,
      error: Palette.red[15]!,
      errorPressed: Palette.red[25]!,
      errorDisable: Palette.red[50]!,
      accent: Palette.blue[15]!,
      accentPressed: Palette.blue[25]!,
      accentDisable: Palette.blue[50]!,
    );
  } else {
    return BackgroundColors(
      primary: Palette.gray.shade900,
      secondary: Palette.gray.shade800,
      tertiary: Palette.gray.shade700,
      overlay: Palette.base[600]!,
      mask: Palette.base[500]!,
      success: Palette.green.shade800,
      successPressed: Palette.green.shade700,
      successDisable: Palette.green.shade900,
      info: Palette.blue.shade800,
      infoPressed: Palette.blue.shade700,
      infoDisable: Palette.blue.shade900,
      warning: Palette.yellow.shade800,
      warningPressed: Palette.yellow.shade700,
      warningDisable: Palette.yellow.shade900,
      error: Palette.red.shade800,
      errorPressed: Palette.red.shade700,
      errorDisable: Palette.red.shade900,
      accent: Palette.blue.shade800,
      accentPressed: Palette.blue.shade700,
      accentDisable: Palette.blue.shade900,
    );
  }
}
