// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/status_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightStatusColors = _generatePaletteFromBrightness(Brightness.light);
final darkStatusColors = _generatePaletteFromBrightness(Brightness.dark);

StatusColors _generatePaletteFromBrightness(Brightness brightness) {
  // Both light and dark use the same values as per the design image
  return StatusColors(
    info: Palette.cyan[40]!, // Cyan / 40
    error: Palette.red[40]!, // Red / 40
    warning: Palette.yellow[30]!, // Yellow / 30
    success: Palette.green[40]!, // Green / 40
  );
}
