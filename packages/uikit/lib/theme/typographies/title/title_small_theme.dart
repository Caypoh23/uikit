// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/title/title_small.dart';

final lightTitleSmall = _generateTypographyFromBrightness(Brightness.light);
final darkTitleSmall = _generateTypographyFromBrightness(Brightness.dark);

TitleSmall _generateTypographyFromBrightness(Brightness brightness) {
  if (brightness == Brightness.light) {
    return TitleSmall(
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
    return TitleSmall(
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
  fontSize: 14,
  height: 14 / 20,
  fontWeight: FontWeight.w400,
);
