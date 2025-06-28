// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/display/display_medium.dart';

final lightDisplayMedium = _generateTypographyFromBrightness(Brightness.light);
final darkDisplayMedium = _generateTypographyFromBrightness(Brightness.dark);

DisplayMedium _generateTypographyFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return DisplayMedium(
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
    return DisplayMedium(
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
  fontSize: 45,
  height: 52 / 45,
  fontWeight: FontWeight.w400,
);
