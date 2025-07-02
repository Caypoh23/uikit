// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightElementColors = _generatePaletteFromBrightness(Brightness.light);
final darkElementColors = _generatePaletteFromBrightness(Brightness.dark);

ElementColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ElementColors(
      primary: Palette.gray[950]!,
      secondary: Palette.gray.shade400,
      tertiary: const Color(0xFF777777),
      additional: Palette.gray.shade200,
      additionalTwo: Palette.gray.shade50,
      disable: Palette.gray[25]!,
      system: Palette.gray[15]!,
      contrastWhite: Palette.base[15]!,
      contrastBlack: Palette.gray.shade900,
      success: Palette.green.shade400,
      accent: Palette.green.shade500,
      accentPressed: Palette.green.shade600,
      accentDisable: Palette.green[25]!,
      attention: Palette.yellow.shade500,
      attentionPressed: Palette.yellow.shade600,
      attentionDisable: Palette.yellow[25]!,
      info: Palette.blue.shade500,
      error: const Color(0xFFFD5F55),
      errorPressed: Palette.red.shade600,
      errorDisable: Palette.red[25]!,
    );
  } else {
    return ElementColors(
      primary: Palette.gray[15]!,
      secondary: Palette.gray[25]!,
      tertiary: const Color(0xFF777777),
      additional: Palette.gray.shade300,
      additionalTwo: Palette.gray.shade500,
      disable: Palette.gray.shade600,
      system: Palette.gray.shade700,
      contrastWhite: Palette.base[15]!,
      contrastBlack: Palette.gray.shade900,
      success: Palette.green.shade400,
      accent: Palette.green.shade500,
      accentPressed: Palette.green.shade600,
      accentDisable: Palette.green.shade800,
      attention: Palette.yellow.shade500,
      attentionPressed: Palette.yellow.shade600,
      attentionDisable: Palette.yellow.shade800,
      info: Palette.blue.shade500,
      error: const Color(0xFFFD5F55),
      errorPressed: Palette.red.shade600,
      errorDisable: Palette.red.shade800,
    );
  }
}
