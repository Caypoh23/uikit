// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/card_gradient_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightCardGradientColors =
    _generatePaletteFromBrightness(Brightness.light);
final darkCardGradientColors = _generatePaletteFromBrightness(Brightness.dark);

CardGradientColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return CardGradientColors(
      primaryStart: Palette.base[15]!,
      primaryEnd: Palette.gray[15]!,
      secondaryStart: Palette.purple[15]!,
      secondaryEnd: Palette.blue[15]!,
      accentStart: Palette.purple[400]!,
      accentEnd: Palette.blue[500]!,
    );
  } else {
    return CardGradientColors(
      primaryStart: Palette.gray.shade900,
      primaryEnd: Palette.gray.shade800,
      secondaryStart: Palette.purple.shade900,
      secondaryEnd: Palette.blue.shade900,
      accentStart: Palette.purple.shade700,
      accentEnd: Palette.blue.shade700,
    );
  }
}
