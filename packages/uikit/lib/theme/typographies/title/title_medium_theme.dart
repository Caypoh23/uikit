// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/title/title_medium.dart';

final lightTitleMedium = _generateTypographyFromBrightness(Brightness.light);
final darkTitleMedium = _generateTypographyFromBrightness(Brightness.dark);

TitleMedium _generateTypographyFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return TitleMedium(
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
    return TitleMedium(
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
  fontSize: 16,
  height: 24 / 16,
  fontWeight: FontWeight.w400,
);
