// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/gradients/app_gradients.dart';
import 'package:im_uikit/theme/gradients/background_gradients_theme.dart';
import 'package:im_uikit/theme/gradients/button_gradients_theme.dart';
import 'package:im_uikit/theme/gradients/card_gradients_theme.dart';
import 'package:im_uikit/theme/gradients/shimmer_gradients_theme.dart';
import 'package:im_uikit/theme/gradients/toast_gradients_theme.dart';

extension GradientThemeDataExtension on ThemeData {
  PaynetGradients get appGradients =>
      extension<PaynetGradients>() ??
      PaynetGradients(
        toast: lightToastGradients,
        shimmer: lightShimmerGradients,
        button: lightButtonGradients,
        background: lightBackgroundGradients,
        card: lightCardGradients,
      );
}

extension CradientThemeDataContextExtension on BuildContext {
  PaynetGradients get appGradients => Theme.of(this).appGradients;
}
