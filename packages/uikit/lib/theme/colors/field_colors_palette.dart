// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/field_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightFieldColors = _generatePaletteFromBrightness(Brightness.light);
final darkFieldColors = _generatePaletteFromBrightness(Brightness.dark);

FieldColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return FieldColors(
      background: Palette.base[15]!,
      backgroundDisabled: Palette.gray[15]!,
      border: Palette.gray.shade200,
      borderFocused: Palette.blue.shade500,
      borderError: Palette.red.shade500,
      borderSuccess: Palette.green.shade500,
      borderDisabled: Palette.gray[25]!,
      placeholder: Palette.gray.shade200,
      text: Palette.gray.shade900,
      textDisabled: Palette.gray[25]!,
      icon: Palette.gray.shade400,
      iconDisabled: Palette.gray[25]!,
      error: Palette.red.shade500,
      success: Palette.green.shade500,
      helper: Palette.gray.shade400,
    );
  } else {
    return FieldColors(
      background: Palette.gray.shade900,
      backgroundDisabled: Palette.gray.shade800,
      border: Palette.gray.shade700,
      borderFocused: Palette.blue.shade400,
      borderError: Palette.red.shade500,
      borderSuccess: Palette.green.shade500,
      borderDisabled: Palette.gray.shade600,
      placeholder: Palette.gray.shade300,
      text: Palette.gray[15]!,
      textDisabled: Palette.gray.shade500,
      icon: Palette.gray[25]!,
      iconDisabled: Palette.gray.shade500,
      error: Palette.red.shade500,
      success: Palette.green.shade500,
      helper: Palette.gray.shade300,
    );
  }
}
