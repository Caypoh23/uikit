// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/text_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightTextColors = _generatePaletteFromBrightness(Brightness.light);
final darkTextColors = _generatePaletteFromBrightness(Brightness.dark);

TextColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return TextColors(
      primary: const Color(0xFFFFFFFF),
      secondary: const Color(0xFF000000),
      tertiary: const Color(0xFF777777),
      placeholder: Palette.gray.shade200,
      mask: Palette.gray.shade100,
      hint: Palette.gray.shade100,
      disable: Palette.gray[25]!,
      white: Palette.base[15]!,
      black: Palette.gray.shade900,
      success: Palette.green.shade500,
      accent: Palette.blue.shade500,
      accentPressed: Palette.blue.shade600,
      accentDisable: Palette.blue.shade50,
      warning: Palette.yellow.shade500,
      warningPressed: Palette.yellow.shade600,
      warningDisable: Palette.yellow[25]!,
      error: Palette.red.shade500,
      errorPressed: Palette.red.shade600,
      errorDisable: Palette.red[25]!,
      link: Palette.blue.shade500,
      linkPressed: Palette.blue.shade600,
      linkDisable: Palette.blue[25]!,
    );
  } else {
    return TextColors(
      primary: const Color(0xFFFFFFFF),
      secondary: const Color(0xFF000000),
      tertiary: const Color(0xFF777777),
      placeholder: Palette.gray.shade300,
      mask: Palette.gray.shade400,
      hint: Palette.gray.shade400,
      disable: Palette.gray.shade500,
      white: Palette.base[15]!,
      black: Palette.gray.shade900,
      success: Palette.green.shade500,
      accent: Palette.blue.shade500,
      accentPressed: Palette.blue.shade600,
      accentDisable: Palette.blue.shade700,
      warning: Palette.yellow.shade500,
      warningPressed: Palette.yellow.shade600,
      warningDisable: Palette.yellow.shade700,
      error: Palette.red.shade500,
      errorPressed: Palette.red.shade600,
      errorDisable: Palette.red.shade700,
      link: Palette.blue.shade400,
      linkPressed: Palette.blue.shade500,
      linkDisable: Palette.blue.shade600,
    );
  }
}
