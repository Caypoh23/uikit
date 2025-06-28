// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/headline/headline_large.dart';

final lightHeadlineLarge = _generateTypographyFromBrightness(Brightness.light);
final darkHeadlineLarge = _generateTypographyFromBrightness(Brightness.dark);

HeadlineLarge _generateTypographyFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return HeadlineLarge(
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
    return HeadlineLarge(
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
  fontSize: 32,
  height: 40 / 32,
  fontWeight: FontWeight.w400,
);
