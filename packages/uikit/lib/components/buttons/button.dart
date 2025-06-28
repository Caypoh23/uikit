// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/uikit.dart';

enum ButtonType {
  primary,
  secondary,
  tertiary,
  inverted,
  ghost,
  positive,
  negative,
}

enum ButtonSize {
  small,
  medium,
  large,
}

const _iconSize = 24.0;

class Button extends StatelessWidget {
  const Button.primary({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.primary;

  const Button.secondary({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.secondary;

  const Button.tertiary({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.tertiary;

  const Button.inverted({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.inverted;

  const Button.ghost({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.ghost;

  const Button.positive({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.positive;

  const Button.negative({
    required this.text,
    required this.onTap,
    //
    this.onLongPress,
    //
    this.iconStart,
    this.iconEnd,
    this.subtext,
    this.count,
    //
    this.size = ButtonSize.large,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
    this.showSubtext = false,
    this.enable = true,
    //
    this.width,
    super.key,
  }) : _type = ButtonType.negative;

  final String text;

  final Widget? iconStart;
  final Widget? iconEnd;

  final String? subtext;
  final int? count;

  final ButtonType _type;
  final ButtonSize size;

  final void Function() onTap;
  final void Function()? onLongPress;

  final EdgeInsets margin;

  final bool isLoading;
  final bool showSubtext;
  final bool enable;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(microseconds: 250),
      child: MyInkWell(
        width: width,
        margin: margin,
        height: _getHeight(),
        onLongPress: onLongPress,
        color: enable || isLoading
            ? _enabledColor(context)
            : _disabledColor(context),
        splashColor: _splashColor(context),
        borderRadius: BorderRadius.circular(16),
        onTap: enable && !isLoading ? onTap : null,
        hoverColor: enable || isLoading ? _hoverColor(context) : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (iconStart != null) ...[
                    SizedBox(
                      width: _iconSize,
                      height: _iconSize,
                      child: iconStart!,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: _getTextStyle(context),
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (subtext != null) _subtextWidget(context),
                    ],
                  ),
                  if (iconEnd != null) ...[
                    const SizedBox(width: 8),
                    SizedBox(
                      width: _iconSize,
                      height: _iconSize,
                      child: iconEnd!,
                    ),
                  ],
                  if (count != null) ...[
                    const SizedBox(width: 8),
                    _ButtonBadge(
                      count: count!,
                      size: _getBadgeSize(),
                      color: _getBadgeColor(),
                      textColor: _enabledColor(context),
                    ),
                  ],
                ],
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyProgressIndicator(
                    color: _textColor(context),
                  ),
                  if (showSubtext && subtext != null) ...[
                    SizedBox(height: 4),
                    _subtextWidget(context),
                  ]
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _subtextWidget(BuildContext context) {
    return Text(
      subtext!,
      overflow: TextOverflow.ellipsis,
      style: context.labelSmall.regular.copyWith(
        color: _textColor(context),
      ),
    );
  }

  double _getHeight() {
    switch (size) {
      case ButtonSize.small:
        return 32;
      case ButtonSize.medium:
        return 40;
      case ButtonSize.large:
        return 56;
    }
  }

  double _getBadgeSize() {
    switch (size) {
      case ButtonSize.large:
      case ButtonSize.medium:
        return 28;
      case ButtonSize.small:
        return 20;
    }
  }

  Color _getBadgeColor() {
    switch (_type) {
      case ButtonType.primary:
      case ButtonType.inverted:
      case ButtonType.positive:
      case ButtonType.negative:
        return Colors.white;
      case ButtonType.secondary:
      case ButtonType.tertiary:
      case ButtonType.ghost:
        return Colors.black;
    }
  }

  // Color _getBadgeTextColor() {
  //   switch (_type) {
  //     case ButtonType.primary:
  //     case ButtonType.inverted:
  //     case ButtonType.positive:
  //     case ButtonType.negative:
  //       return Colors.black;
  //     case ButtonType.secondary:
  //     case ButtonType.tertiary:
  //     case ButtonType.ghost:
  //       return Colors.white;
  //   }
  // }

  TextStyle _getTextStyle(BuildContext context) {
    switch (size) {
      case ButtonSize.large:
        return context.bodyLarge.semibold.copyWith(color: _textColor(context));
      case ButtonSize.medium:
        return context.bodyLarge.semibold.copyWith(color: _textColor(context));
      case ButtonSize.small:
        return context.bodyMedium.semibold.copyWith(
          color: _textColor(context),
        );
    }
  }

  Color _textColor(BuildContext context) {
    final theme = Theme.of(context);
    if (!enable) {
      return context.textColors.tertiary.withValues(alpha: 0.5);
    }
    switch (_type) {
      case ButtonType.ghost:
      case ButtonType.tertiary:
      case ButtonType.secondary:
        return theme.textColors.secondary;
      case ButtonType.inverted:
        return theme.textColors.primary;
      case ButtonType.positive:
        return theme.textColors.primary;
      case ButtonType.negative:
        return theme.textColors.primary;
      default:
        return theme.textColors.primary;
    }
  }

  Color _enabledColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case ButtonType.primary:
        return theme.buttonColors.primary;
      case ButtonType.secondary:
        return theme.buttonColors.secondary;
      case ButtonType.tertiary:
        return theme.buttonColors.tertiary;
      case ButtonType.inverted:
        return theme.buttonColors.inverted;
      case ButtonType.ghost:
        return theme.buttonColors.ghost;
      case ButtonType.positive:
        return theme.buttonColors.positive;
      case ButtonType.negative:
        return theme.buttonColors.negative;
    }
  }

  Color _hoverColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case ButtonType.primary:
        return theme.buttonColors.primaryHover;
      case ButtonType.secondary:
        return theme.buttonColors.secondaryHover;
      case ButtonType.tertiary:
        return theme.buttonColors.tertiaryHover;
      case ButtonType.inverted:
        return theme.buttonColors.invertedHover;
      case ButtonType.ghost:
        return theme.buttonColors.ghostHover;
      case ButtonType.positive:
        return theme.buttonColors.positiveHover;
      case ButtonType.negative:
        return theme.buttonColors.negativeHover;
    }
  }

  Color _splashColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case ButtonType.primary:
        return theme.buttonColors.primaryPressed;
      case ButtonType.secondary:
        return theme.buttonColors.secondaryPressed;
      case ButtonType.tertiary:
        return theme.buttonColors.tertiaryPressed;
      case ButtonType.inverted:
        return theme.buttonColors.invertedPressed;
      case ButtonType.ghost:
        return theme.buttonColors.ghostPressed;
      case ButtonType.positive:
        return theme.buttonColors.positivePressed;
      case ButtonType.negative:
        return theme.buttonColors.negativePressed;
    }
  }

  Color _disabledColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case ButtonType.primary:
        return theme.buttonColors.primaryDisable;
      case ButtonType.secondary:
        return theme.buttonColors.secondaryDisable;
      case ButtonType.tertiary:
        return theme.buttonColors.tertiaryDisable;
      case ButtonType.inverted:
        return theme.buttonColors.invertedDisable;
      case ButtonType.ghost:
        return theme.buttonColors.ghostDisable;
      case ButtonType.positive:
        return theme.buttonColors.positiveDisable;
      case ButtonType.negative:
        return theme.buttonColors.negativeDisable;
    }
  }
}

class _ButtonBadge extends StatelessWidget {
  const _ButtonBadge({
    required this.count,
    required this.size,
    required this.color,
    required this.textColor,
  });

  final int count;
  final double size;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        '$count',
        style: context.bodyLarge.regular.copyWith(
          color: textColor,
        ),
      ),
    );
  }
}
