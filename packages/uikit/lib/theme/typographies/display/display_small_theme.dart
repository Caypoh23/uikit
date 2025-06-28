// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/display/display_small.dart';

final lightDisplaySmall = _generateTypographyFromBrightness(Brightness.light);
final darkDisplaySmall = _generateTypographyFromBrightness(Brightness.dark);

DisplaySmall _generateTypographyFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return DisplaySmall(
      regular: _baseTypography.copyWith(
        color: lightTextColors.primary,
        fontWeight: FontWeight.w400,
      ),
      medium: _baseTypography.copyWith(
        color: lightTextColors.primary,
        fontWeight: FontWeight.w500,
      ),
      semibold: _baseTypography.copyWith(
        color: lightTextColors.primary,
        fontWeight: FontWeight.w600,
      ),
      bold: _baseTypography.copyWith(
        color: lightTextColors.primary,
        fontWeight: FontWeight.w700,
      ),
    );
  } else {
    return DisplaySmall(
      regular: _baseTypography.copyWith(
        color: darkTextColors.primary,
        fontWeight: FontWeight.w400,
      ),
      medium: _baseTypography.copyWith(
        color: darkTextColors.primary,
        fontWeight: FontWeight.w500,
      ),
      semibold: _baseTypography.copyWith(
        color: darkTextColors.primary,
        fontWeight: FontWeight.w600,
      ),
      bold: _baseTypography.copyWith(
        color: darkTextColors.primary,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

const _baseTypography = TextStyle(
  fontSize: 36,
  height: 44 / 36,
  fontWeight: FontWeight.w400,
);
