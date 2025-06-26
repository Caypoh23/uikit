// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/shimmer_gradient_colors.dart';
import 'package:im_uikit/theme/palette.dart';

final lightShimmerGradientColors =
    _generatePaletteFromBrightness(Brightness.light);
final darkShimmerGradientColors =
    _generatePaletteFromBrightness(Brightness.dark);

ShimmerGradientColors _generatePaletteFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return ShimmerGradientColors(
      primaryStart: Palette.gray[15]!,
      primaryCenter: Palette.base[15]!,
      primaryEnd: Palette.gray[15]!,
      secondaryStart: Palette.gray[25]!,
      secondaryCenter: Palette.gray[15]!,
      secondaryEnd: Palette.gray[25]!,
    );
  } else {
    return ShimmerGradientColors(
      primaryStart: Palette.gray.shade700,
      primaryCenter: Palette.gray.shade500,
      primaryEnd: Palette.gray.shade700,
      secondaryStart: Palette.gray.shade700,
      secondaryCenter: Palette.gray.shade500,
      secondaryEnd: Palette.gray.shade700,
    );
  }
}
