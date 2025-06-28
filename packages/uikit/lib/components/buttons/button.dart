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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
    this.size = ButtonSize.medium,
    this.margin = EdgeInsets.zero,
    //
    this.isLoading = false,
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
  final bool enable;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(microseconds: 250),
      child: MyInkWell(
        width: width,
        margin: margin,
        padding: _getPadding(),
        onLongPress: onLongPress,
        onTap: enable && !isLoading ? onTap : null,
        color: enable || isLoading
            ? _enabledColor(context)
            : _disabledColor(context),
        splashColor: _splashColor(context),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color:
              enable || isLoading ? _borderColor(context) : Colors.transparent,
        ),
        child: SizedBox(
          height: _getHeight(),
          child: Stack(
            children: [
              if (!isLoading)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (iconStart != null) ...[
                      iconStart!,
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
                        if (subtext != null)
                          Text(
                            subtext!,
                            style: context.bodySmall.regular,
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                    if (iconEnd != null) ...[
                      const SizedBox(width: 8),
                      iconEnd!,
                    ],
                    if (count != null) ...[
                      const SizedBox(width: 8),
                      _ButtonBadge(
                        count: count!,
                        size: _getBadgeSize(),
                      ),
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

  EdgeInsets _getPadding() {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 6);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
    }
  }

  TextStyle _getTextStyle(BuildContext context) {
    switch (size) {
      case ButtonSize.small:
        return context.bodyLarge.medium.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
      case ButtonSize.medium:
        return context.bodyLarge.medium.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
      case ButtonSize.large:
        return context.bodyLarge.medium.copyWith(
          color: enable || isLoading
              ? _textColor(context)
              : context.textColors.primary,
        );
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

  Color _borderColor(BuildContext context) {
    return Colors.transparent;
  }

  Color _textColor(BuildContext context) {
    final theme = Theme.of(context);
    switch (_type) {
      case ButtonType.secondary:
      case ButtonType.tertiary:
      case ButtonType.ghost:
        return theme.textColors.primary;
      case ButtonType.inverted:
        return theme.textColors.white;
      case ButtonType.positive:
        return theme.textColors.white;
      case ButtonType.negative:
        return theme.textColors.white;
      default:
        return theme.textColors.white;
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
}

class _ButtonBadge extends StatelessWidget {
  const _ButtonBadge({
    required this.count,
    required this.size,
  });

  final int count;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        '$count',
        style: context.bodySmall.regular,
      ),
    );
  }
}
