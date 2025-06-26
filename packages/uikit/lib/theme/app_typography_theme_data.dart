// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/typographies/typographies.dart';

extension AppTypographyThemeDataExtension on ThemeData {
  DisplayLarge get displayLarge =>
      extension<DisplayLarge>() ?? lightDisplayLarge;
  DisplayMedium get displayMedium =>
      extension<DisplayMedium>() ?? lightDisplayMedium;
  DisplaySmall get displaySmall =>
      extension<DisplaySmall>() ?? lightDisplaySmall;

  HeadlineLarge get headlineLarge =>
      extension<HeadlineLarge>() ?? lightHeadlineLarge;
  HeadlineMedium get headlineMedium =>
      extension<HeadlineMedium>() ?? lightHeadlineMedium;
  HeadlineSmall get headlineSmall =>
      extension<HeadlineSmall>() ?? lightHeadlineSmall;

  TitleLarge get titleLarge => extension<TitleLarge>() ?? lightTitleLarge;
  TitleMedium get titleMedium => extension<TitleMedium>() ?? lightTitleMedium;
  TitleSmall get titleSmall => extension<TitleSmall>() ?? lightTitleSmall;

  LabelLarge get labelLarge => extension<LabelLarge>() ?? lightLabelLarge;
  LabelMedium get labelMedium => extension<LabelMedium>() ?? lightLabelMedium;
  LabelSmall get labelSmall => extension<LabelSmall>() ?? lightLabelSmall;

  BodyLarge get bodyLarge => extension<BodyLarge>() ?? lightBodyLarge;
  BodyMedium get bodyMedium => extension<BodyMedium>() ?? lightBodyMedium;
  BodySmall get bodySmall => extension<BodySmall>() ?? lightBodySmall;
}

extension AppTypographyThemeDataContextExtension on BuildContext {
  // Display typography
  /// fontSize: 57
  DisplayLarge get displayLarge => Theme.of(this).displayLarge;

  /// fontSize: 45
  DisplayMedium get displayMedium => Theme.of(this).displayMedium;

  /// fontSize: 36
  DisplaySmall get displaySmall => Theme.of(this).displaySmall;

  // Headline typography
  /// fontSize: 32
  HeadlineLarge get headlineLarge => Theme.of(this).headlineLarge;

  /// fontSize: 28
  HeadlineMedium get headlineMedium => Theme.of(this).headlineMedium;

  /// fontSize: 24
  HeadlineSmall get headlineSmall => Theme.of(this).headlineSmall;

  // Title typography
  /// fontSize: 20
  TitleLarge get titleLarge => Theme.of(this).titleLarge;

  /// fontSize: 16
  TitleMedium get titleMedium => Theme.of(this).titleMedium;

  /// fontSize: 14
  TitleSmall get titleSmall => Theme.of(this).titleSmall;

  // Label typography
  /// fontSize: 14
  LabelLarge get labelLarge => Theme.of(this).labelLarge;

  /// fontSize: 12
  LabelMedium get labelMedium => Theme.of(this).labelMedium;

  /// fontSize: 11
  LabelSmall get labelSmall => Theme.of(this).labelSmall;

  // Body typography
  /// fontSize: 16
  BodyLarge get bodyLarge => Theme.of(this).bodyLarge;

  /// fontSize: 14
  BodyMedium get bodyMedium => Theme.of(this).bodyMedium;

  /// fontSize: 12
  BodySmall get bodySmall => Theme.of(this).bodySmall;
}
