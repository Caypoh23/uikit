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
    this.showText = true,
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
    this.showText = true,
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
    this.showText = true,
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
    this.showText = true,
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
    this.showText = true,
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
    this.showText = true,
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
    this.showText = true,
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
  final bool showText;
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
        height: _height,
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
          children: [
            if (!isLoading)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    children: [
                      if (showText)
                        Text(
                          text,
                          style: _textStyle(context),
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
                    SizedBox(
                      width: _badgeSize,
                      height: _badgeSize,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: ShaderMask(
                          blendMode: BlendMode.srcOut,
                          shaderCallback: (bounds) {
                            return LinearGradient(
                              colors: [
                                _badgeColor(context),
                                _badgeColor(context),
                              ],
                            ).createShader(bounds);
                          },
                          child: Center(
                            child: Text(
                              '$count',
                              textAlign: TextAlign.center,
                              style: context.bodyLarge.semibold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              )
            else
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyProgressIndicator(
                    size: _loadingSize,
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

  double get _height {
    switch (size) {
      case ButtonSize.small:
        return 40;
      case ButtonSize.medium:
        return 48;
      case ButtonSize.large:
        return 56;
    }
  }

  double get _loadingSize {
    switch (size) {
      case ButtonSize.large:
      case ButtonSize.medium:
        return 24;
      case ButtonSize.small:
        return 20;
    }
  }

  double get _badgeSize {
    switch (size) {
      case ButtonSize.large:
      case ButtonSize.medium:
        return 28;
      case ButtonSize.small:
        return 24;
    }
  }

  Color _badgeColor(BuildContext context) {
    if (!enable) {
      return context.elementColors.tertiary.withValues(alpha: 0.5);
    }
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

  TextStyle _textStyle(BuildContext context) {
    switch (size) {
      case ButtonSize.large:
        return context.bodyLarge.semibold.copyWith(color: _textColor(context));
      case ButtonSize.medium:
        return context.bodyLarge.semibold.copyWith(color: _textColor(context));
      case ButtonSize.small:
        return context.bodyMedium.semibold.copyWith(color: _textColor(context));
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
