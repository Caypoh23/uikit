// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/uikit.dart';

enum _MyButtonType {
  primary,
  secondary,
  tertiary,
  inverted,
  ghost,
  positive,
  negative,
}

enum MyButtonSize {
  small,
  medium,
  large,
}

class MyButton extends StatelessWidget {
  const MyButton.primary({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.primary;

  const MyButton.secondary({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.secondary;

  const MyButton.tertiary({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.tertiary;

  const MyButton.inverted({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.inverted;

  const MyButton.ghost({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.ghost;

  const MyButton.positive({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.positive;

  const MyButton.negative({
    required this.label,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconLeft,
    this.iconRight,
    this.subtext,
    this.count,
    //
    this.size = MyButtonSize.medium,
    this.padding,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = _MyButtonType.negative;

  final String label;
  final String? subtext;
  final int? count;

  final _MyButtonType _type;
  final MyButtonSize size;

  final void Function() onTap;
  final void Function()? onLongPress;

  final Widget? iconLeft;
  final Widget? iconRight;

  final EdgeInsets? padding;
  final EdgeInsets margin;

  final bool isLoading;
  final bool enable;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(microseconds: 250),
      child: MyInkWell(
        width: width,
        margin: margin,
        padding: padding ?? _getPadding(),
        border: Border.all(
          color:
              enable || isLoading ? _borderColor(context) : Colors.transparent,
        ),
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(12),
        onTap: enable && !isLoading ? onTap : null,
        color: enable || isLoading
            ? _enabledColor(context)
            : _disabledColor(context),
        splashColor: _splashColor(context),
        child: SizedBox(
          height: _getHeight(),
          child: Stack(
            children: [
              if (!isLoading)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (iconLeft != null) ...[
                      iconLeft!,
                      const SizedBox(width: 8),
                    ],
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            label,
                            style: _getTextStyle(context),
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (subtext != null)
                            Text(
                              subtext!,
                              style: _getSubtextStyle(context),
                              overflow: TextOverflow.ellipsis,
                            ),
                        ],
                      ),
                    ),
                    if (iconRight != null) ...[
                      const SizedBox(width: 8),
                      iconRight!,
                    ],
                    if (count != null) ...[
                      const SizedBox(width: 8),
                      _ButtonBadge(count: count!, size: size),
                    ],
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyProgressIndicator(
                      color: _textColor(context),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  double _getHeight() {
    switch (size) {
      case MyButtonSize.small:
        return 32;
      case MyButtonSize.medium:
        return 40;
      case MyButtonSize.large:
        return 56;
    }
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case MyButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
      case MyButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case MyButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
    }
  }

  TextStyle _getTextStyle(BuildContext context) {
    switch (size) {
      case MyButtonSize.small:
        return context.labelMedium.regular.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
      case MyButtonSize.medium:
        return context.titleMedium.regular.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
      case MyButtonSize.large:
        return context.titleLarge.regular.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
    }
  }

  TextStyle _getSubtextStyle(BuildContext context) {
    // Suisse Intl, Regular, 10, 12
    return const TextStyle(
      fontFamily: 'Suisse Intl',
      fontWeight: FontWeight.w400,
      fontSize: 10,
      height: 12 / 10,
      color: Colors.white, // theme this
    );
  }

  Color _enabledColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case _MyButtonType.primary:
        return theme.buttonColors.primary;
      case _MyButtonType.secondary:
        return theme.buttonColors.secondary;
      case _MyButtonType.tertiary:
        return theme.buttonColors.tertiary;
      case _MyButtonType.inverted:
        return theme.buttonColors.inverted;
      case _MyButtonType.ghost:
        return theme.buttonColors.ghost;
      case _MyButtonType.positive:
        return theme.buttonColors.positive;
      case _MyButtonType.negative:
        return theme.buttonColors.negative;
    }
  }

  Color _disabledColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case _MyButtonType.primary:
        return theme.buttonColors.primaryDisable;
      case _MyButtonType.secondary:
        return theme.buttonColors.secondaryDisable;
      case _MyButtonType.tertiary:
        return theme.buttonColors.tertiaryDisable;
      case _MyButtonType.inverted:
        return theme.buttonColors.invertedDisable;
      case _MyButtonType.ghost:
        return theme.buttonColors.ghostDisable;
      case _MyButtonType.positive:
        return theme.buttonColors.positiveDisable;
      case _MyButtonType.negative:
        return theme.buttonColors.negativeDisable;
    }
  }

  Color _borderColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case _MyButtonType.ghost:
        return theme.elementColors.system;
      default:
        return Colors.transparent;
    }
  }

  Color _textColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case _MyButtonType.secondary:
      case _MyButtonType.tertiary:
      case _MyButtonType.ghost:
        return theme.textColors.primary;
      case _MyButtonType.inverted:
        return theme.textColors.white;
      case _MyButtonType.positive:
        return theme.textColors.white;
      case _MyButtonType.negative:
        return theme.textColors.white;
      default:
        return theme.textColors.white;
    }
  }

  Color _splashColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case _MyButtonType.primary:
        return theme.buttonColors.primaryPressed;
      case _MyButtonType.secondary:
        return theme.buttonColors.secondaryPressed;
      case _MyButtonType.tertiary:
        return theme.buttonColors.tertiaryPressed;
      case _MyButtonType.inverted:
        return theme.buttonColors.invertedPressed;
      case _MyButtonType.ghost:
        return theme.buttonColors.ghostPressed;
      case _MyButtonType.positive:
        return theme.buttonColors.positivePressed;
      case _MyButtonType.negative:
        return theme.buttonColors.negativePressed;
    }
  }
}

// Badge widget for count
class _ButtonBadge extends StatelessWidget {
  final int count;
  final MyButtonSize size;
  const _ButtonBadge({required this.count, required this.size});

  @override
  Widget build(BuildContext context) {
    double badgeSize;
    TextStyle textStyle;
    switch (size) {
      case MyButtonSize.small:
        badgeSize = 20;
        textStyle = const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w600, height: 1.2);
        break;
      case MyButtonSize.medium:
        badgeSize = 24;
        textStyle = const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, height: 1.2);
        break;
      case MyButtonSize.large:
        badgeSize = 28;
        textStyle = const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, height: 1.25);
        break;
    }
    return Container(
      width: badgeSize,
      height: badgeSize,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.16), // theme this
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        '$count',
        style: textStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
