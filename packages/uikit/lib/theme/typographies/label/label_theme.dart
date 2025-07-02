// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/typographies/label/label_text_styles.dart';

final lightLabelTextStyles =
    _generateTypographyFromBrightness(Brightness.light);
final darkLabelTextStyles = _generateTypographyFromBrightness(Brightness.dark);

LabelTextStyles _generateTypographyFromBrightness(Brightness brightness) {
  final color = brightness == Brightness.light
      ? lightTextColors.primary
      : darkTextColors.primary;
  return LabelTextStyles(
    main: TextStyle(
      color: color,
      fontSize: 13,
      height: 16 / 13,
      letterSpacing: 0,
      fontWeight: FontWeight.w400,
    ),
    medium1: TextStyle(
      color: color,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w500,
    ),
    medium2: TextStyle(
      color: color,
      fontSize: 14,
      height: 20 / 14,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
    ),
    large: TextStyle(
      color: color,
      fontSize: 16,
      height: 20 / 16,
      letterSpacing: 0,
      fontWeight: FontWeight.w600,
    ),
  );
}
