// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/button_colors.dart';

final lightButtonColors = _generatePaletteFromBrightness(Brightness.light);
final darkButtonColors = _generatePaletteFromBrightness(Brightness.dark);

ButtonColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ButtonColors(
      primary: const Color(0xFF222222),
      primaryHover: const Color(0xFF444444),
      primaryPressed: const Color(0xFF333333),
      primaryDisable: const Color(0x1A111111),
      secondary: const Color(0xFFE2E2E2),
      secondaryHover: const Color(0xFFCACACA),
      secondaryPressed: const Color(0xFFE8E8E8),
      secondaryDisable: const Color(0xFFCDCED1),
      tertiary: const Color(0xFFFFFFFF),
      tertiaryHover: const Color(0xFFF5F5F5),
      tertiaryPressed: const Color(0xFFEFEFEF),
      tertiaryDisable: const Color(0x1A111111),
      inverted: const Color(0xFF000000),
      invertedHover: const Color(0xFF000000),
      invertedPressed: const Color(0xFF000000),
      invertedDisable: const Color(0x1A111111),
      ghost: const Color(0x00000000),
      ghostHover: const Color(0xFFE8E8E8),
      ghostPressed: const Color(0x0D000000),
      ghostDisable: const Color(0x1A111111),
      positive: const Color(0xFF00AE1A),
      positiveHover: const Color(0xFF008514),
      positivePressed: const Color(0xFF03CA21),
      positiveDisable: const Color(0x1A111111),
      negative: const Color(0xFFE40C00),
      negativeHover: const Color(0xFFD00B00),
      negativePressed: const Color(0xFFFF2215),
      negativeDisable: const Color(0x1A111111),
    );
  } else {
    return ButtonColors(
      primary: const Color(0xFF222222),
      primaryHover: const Color(0xFF444444),
      primaryPressed: const Color(0xFF333333),
      primaryDisable: const Color(0x1A111111),
      secondary: const Color(0xFFE2E2E2),
      secondaryHover: const Color(0xFFCACACA),
      secondaryPressed: const Color(0xFFE8E8E8),
      secondaryDisable: const Color(0xFFCDCED1),
      tertiary: const Color(0xFFFFFFFF),
      tertiaryHover: const Color(0xFFF5F5F5),
      tertiaryPressed: const Color(0xFFEFEFEF),
      tertiaryDisable: const Color(0x1A111111),
      inverted: const Color(0xFF000000),
      invertedHover: const Color(0xFF000000),
      invertedPressed: const Color(0xFF000000),
      invertedDisable: const Color(0x1A111111),
      ghost: const Color(0x00000000),
      ghostHover: const Color(0xFFE8E8E8),
      ghostPressed: const Color(0x0D000000),
      ghostDisable: const Color(0x1A111111),
      positive: const Color(0xFF00AE1A),
      positiveHover: const Color(0xFF008514),
      positivePressed: const Color(0xFF03CA21),
      positiveDisable: const Color(0x1A111111),
      negative: const Color(0xFFE40C00),
      negativeHover: const Color(0xFFD00B00),
      negativePressed: const Color(0xFFFF2215),
      negativeDisable: const Color(0x1A111111),
    );
  }
}
