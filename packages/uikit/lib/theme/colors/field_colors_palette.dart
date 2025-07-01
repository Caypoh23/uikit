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
      background: const Color(0xFFF3F5F7),
      backgroundDisabled: const Color(0xFFF3F5F7),
      border: Palette.gray.shade200,
      borderHover: const Color(0x0F000000),
      borderFocused: const Color(0xFFA1A1A1),
      borderError: const Color(0xFFE00000),
      borderSuccess: const Color(0xFF16A34A),
      borderDisabled: Palette.gray[25]!,
      cursor: const Color(0xFF000000),
      placeholder: Palette.gray.shade200,
      text: Palette.gray.shade900,
      textDisabled: Palette.gray[25]!,
      icon: Palette.gray.shade400,
      iconDisabled: Palette.gray[25]!,
      error: Palette.red.shade500,
      warning: Palette.yellow.shade500,
      success: Palette.green.shade500,
      helper: Palette.gray.shade400,
    );
  } else {
    return FieldColors(
      background: const Color(0xFFF3F5F7),
      backgroundDisabled: const Color(0xFFF3F5F7),
      border: Palette.gray.shade700,
      borderHover: Palette.gray.shade600,
      borderFocused: const Color(0xFFA1A1A1),
      borderError: Palette.red.shade500,
      borderSuccess: Palette.green.shade500,
      borderDisabled: Palette.gray.shade600,
      cursor: const Color(0xFF000000),
      placeholder: Palette.gray.shade300,
      text: Palette.gray[15]!,
      textDisabled: Palette.gray.shade500,
      icon: Palette.gray[25]!,
      iconDisabled: Palette.gray.shade500,
      error: Palette.red.shade500,
      warning: Palette.yellow.shade500,
      success: Palette.green.shade500,
      helper: Palette.gray.shade300,
    );
  }
}
