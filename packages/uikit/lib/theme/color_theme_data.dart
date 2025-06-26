// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';

extension ColorThemeDataExtension on ThemeData {
  BackgroundColors get backgroundColors =>
      extension<BackgroundColors>() ?? lightBackgroundColors;

  BorderColors get borderColors =>
      extension<BorderColors>() ?? lightBorderColors;

  ButtonColors get buttonColors =>
      extension<ButtonColors>() ?? lightButtonColors;

  ElementColors get elementColors =>
      extension<ElementColors>() ?? lightElementColors;

  FieldColors get fieldColors => extension<FieldColors>() ?? lightFieldColors;

  IconColors get iconColors => extension<IconColors>() ?? lightIconColors;

  TextColors get textColors => extension<TextColors>() ?? lightTextColors;
}

extension ColorThemeDataContextExtension on BuildContext {
  BackgroundColors get backgroundColors => Theme.of(this).backgroundColors;

  BorderColors get borderColors => Theme.of(this).borderColors;

  ButtonColors get buttonColors => Theme.of(this).buttonColors;

  ElementColors get elementColors => Theme.of(this).elementColors;

  FieldColors get fieldColors => Theme.of(this).fieldColors;

  IconColors get iconColors => Theme.of(this).iconColors;

  TextColors get textColors => Theme.of(this).textColors;
}
