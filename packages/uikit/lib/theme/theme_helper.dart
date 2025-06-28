// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/theme/colors/colors.dart';
import 'package:im_uikit/theme/gradients/gradients.dart';
import 'package:im_uikit/theme/system_overlay.dart';
import 'package:im_uikit/theme/typographies/typographies.dart';

const _fontFamily = 'SuisseIntl';

final lightTheme = createThemeData(
  brightness: Brightness.light,

  /// ---- Colors ----
  backgroundColors: lightBackgroundColors,
  borderColors: lightBorderColors,
  buttonColors: lightButtonColors,
  elementColors: lightElementColors,
  fieldColors: lightFieldColors,
  iconColors: lightIconColors,
  textColors: lightTextColors,

  /// ---- Gradients ----
  appGradients: PaynetGradients(
    toast: lightToastGradients,
    shimmer: lightShimmerGradients,
    button: lightButtonGradients,
    background: lightBackgroundGradients,
    card: lightCardGradients,
  ),

  /// ---- Typographies ----
  displayLarge: lightDisplayLarge,
  displayMedium: lightDisplayMedium,
  displaySmall: lightDisplaySmall,
  headlineLarge: lightHeadlineLarge,
  headlineMedium: lightHeadlineMedium,
  headlineSmall: lightHeadlineSmall,
  titleLarge: lightTitleLarge,
  titleMedium: lightTitleMedium,
  titleSmall: lightTitleSmall,
  bodyLarge: lightBodyLarge,
  bodyMedium: lightBodyMedium,
  bodySmall: lightBodySmall,
  labelLarge: lightLabelLarge,
  labelMedium: lightLabelMedium,
  labelSmall: lightLabelSmall,
);

final darkTheme = createThemeData(
  brightness: Brightness.dark,

  /// ---- Colors ----
  backgroundColors: darkBackgroundColors,
  borderColors: darkBorderColors,
  buttonColors: darkButtonColors,
  elementColors: darkElementColors,
  fieldColors: darkFieldColors,
  iconColors: darkIconColors,
  textColors: darkTextColors,

  /// ---- Gradients ----
  appGradients: PaynetGradients(
    toast: darkToastGradients,
    shimmer: darkShimmerGradients,
    button: darkButtonGradients,
    background: darkBackgroundGradients,
    card: darkCardGradients,
  ),

  /// ---- Typographies ----
  displayLarge: darkDisplayLarge,
  displayMedium: darkDisplayMedium,
  displaySmall: darkDisplaySmall,
  headlineLarge: darkHeadlineLarge,
  headlineMedium: darkHeadlineMedium,
  headlineSmall: darkHeadlineSmall,
  titleLarge: darkTitleLarge,
  titleMedium: darkTitleMedium,
  titleSmall: darkTitleSmall,
  bodyLarge: darkBodyLarge,
  bodyMedium: darkBodyMedium,
  bodySmall: darkBodySmall,
  labelLarge: darkLabelLarge,
  labelMedium: darkLabelMedium,
  labelSmall: darkLabelSmall,
);

ThemeData createThemeData({
  required Brightness brightness,

  /// ---- Colors ----
  required BackgroundColors backgroundColors,
  required BorderColors borderColors,
  required ButtonColors buttonColors,
  required ElementColors elementColors,
  required FieldColors fieldColors,
  required IconColors iconColors,
  required TextColors textColors,

  /// ---- Gradients ----
  required PaynetGradients appGradients,

  /// ---- Typographies ----
  required DisplayLarge displayLarge,
  required DisplayMedium displayMedium,
  required DisplaySmall displaySmall,
  required HeadlineLarge headlineLarge,
  required HeadlineMedium headlineMedium,
  required HeadlineSmall headlineSmall,
  required BodyLarge bodyLarge,
  required BodyMedium bodyMedium,
  required BodySmall bodySmall,
  required LabelLarge labelLarge,
  required LabelMedium labelMedium,
  required LabelSmall labelSmall,
  required TitleLarge titleLarge,
  required TitleMedium titleMedium,
  required TitleSmall titleSmall,
}) =>
    ThemeData(
      brightness: brightness,
      extensions: {
        /// ---- Colors ----
        backgroundColors,
        borderColors,
        buttonColors,
        elementColors,
        fieldColors,
        iconColors,
        textColors,

        /// ---- Gradients ----
        appGradients,

        /// ---- Typographies ----
        displayLarge,
        displayMedium,
        displaySmall,
        headlineLarge,
        headlineMedium,
        headlineSmall,
        titleLarge,
        titleMedium,
        titleSmall,
        bodyLarge,
        bodyMedium,
        bodySmall,
        labelLarge,
        labelMedium,
        labelSmall,
      },
      fontFamily: _fontFamily,
      fontFamilyFallback: const [
        'sans-serif',
      ],
      dividerColor: elementColors.system,
      primaryColor: elementColors.success,
      disabledColor: elementColors.disable,
      scaffoldBackgroundColor: backgroundColors.primary,
      primaryTextTheme: TextTheme(
        displayLarge: displayLarge.regular,
        displayMedium: displayMedium.regular,
        displaySmall: displaySmall.regular,
        headlineLarge: headlineLarge.regular,
        headlineMedium: headlineMedium.regular,
        headlineSmall: headlineSmall.regular,
        titleLarge: titleLarge.regular,
        titleMedium: titleMedium.regular,
        titleSmall: titleSmall.regular,
        bodyLarge: bodyLarge.regular,
        bodyMedium: bodyMedium.regular,
        bodySmall: bodySmall.regular,
        labelLarge: labelLarge.regular,
        labelMedium: labelMedium.regular,
        labelSmall: labelSmall.regular,
      ),

      /// App Bar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColors.primary,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: brightness == Brightness.light
            ? MySystemUiOverlayStyle.light
            : MySystemUiOverlayStyle.dark,
        titleTextStyle: titleLarge.bold.copyWith(
          color: textColors.primary,
        ),
        iconTheme: IconThemeData(
          color: iconColors.primary,
          size: 24,
        ),
      ),

      /// Tooltip Theme
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: backgroundColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        textStyle: bodyMedium.regular.copyWith(
          color: textColors.primary,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        showDuration: const Duration(seconds: 4),
        waitDuration: const Duration(seconds: 1),
        triggerMode: TooltipTriggerMode.longPress,
      ),

      /// Chip Theme
      chipTheme: ChipThemeData(
        backgroundColor: elementColors.system,
        disabledColor: elementColors.disable,
        selectedColor: elementColors.success,
        secondarySelectedColor: elementColors.success,
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        labelStyle: bodySmall.medium.copyWith(
          color: textColors.primary,
        ),
        secondaryLabelStyle: bodySmall.medium.copyWith(
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        deleteIconColor: textColors.primary,
        color: WidgetStateProperty.all(elementColors.system),
      ),

      /// Button Theme
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        textTheme: ButtonTextTheme.normal,
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: buttonColors.primary,
          onPrimary: Colors.white,
          secondary: buttonColors.secondary,
          onSecondary: Colors.white,
          tertiary: buttonColors.tertiary,
          onTertiary: Colors.white,
          surface: backgroundColors.primary,
          onSurface: textColors.primary,
        ),
        disabledColor: buttonColors.primaryDisable,
        focusColor: buttonColors.primaryPressed,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColors.primary,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: titleMedium.medium.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      /// Input Field Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: fieldColors.background,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColors.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: borderColors.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: elementColors.success, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: elementColors.error),
        ),
        hintStyle: bodyMedium.regular.copyWith(
          color: textColors.secondary,
        ),
      ),

      /// Checkbox Theme
      checkboxTheme: CheckboxThemeData(
        overlayColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.disabled)
              ? Colors.transparent
              : elementColors.system,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(
          color: elementColors.additionalTwo,
          width: 2,
        ),
        checkColor: WidgetStateProperty.all(Colors.white),
        fillColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? elementColors.success
              : Colors.transparent,
        ),
      ),

      /// Text Theme
      textTheme: TextTheme(
        displayLarge: displayLarge.regular,
        displayMedium: displayMedium.regular,
        displaySmall: displaySmall.regular,
        headlineLarge: headlineLarge.regular,
        headlineMedium: headlineMedium.regular,
        headlineSmall: headlineSmall.regular,
        titleLarge: titleLarge.regular,
        titleMedium: titleMedium.regular,
        titleSmall: titleSmall.regular,
        bodyLarge: bodyLarge.regular,
        bodyMedium: bodyMedium.regular,
        bodySmall: bodySmall.regular,
      ),

      /// Bottom Sheet Theme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: backgroundColors.primary,
        surfaceTintColor: backgroundColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
