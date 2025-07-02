// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:badges/badges.dart' as badges;

// Project imports:
import 'package:im_uikit/theme/app_typography_theme_data.dart';
import 'package:im_uikit/theme/color_theme_data.dart';

enum BadgeType {
  danger,
  success,
  warning,
  info,
}

const _textHeight = 1.4;
const _maxCount = 99;

class MyBadge extends StatelessWidget {
  const MyBadge.danger({
    required this.count,
    this.child,
    this.top = -8,
    this.end = -10,
    super.key,
  }) : _type = BadgeType.danger;

  final int count;
  final Widget? child;

  final double top;
  final double end;

  final BadgeType _type;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      showBadge: count > 0,
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.square,
        badgeColor: _badgeColor(context),
        borderRadius: BorderRadius.circular(20),
        padding: const EdgeInsets.symmetric(horizontal: 6),
      ),
      badgeAnimation: const badges.BadgeAnimation.scale(),
      badgeContent: Text(
        '${count > _maxCount ? '$_maxCount+' : count}',
        style: context.labelMedium.semibold.copyWith(
          height: _textHeight,
          color: _textColor(context),
        ),
      ),
      position: badges.BadgePosition.topEnd(top: top, end: end),
      child: child,
    );
  }

  Color _textColor(BuildContext context) {
    switch (_type) {
      case BadgeType.danger:
      case BadgeType.success:
      case BadgeType.warning:
      case BadgeType.info:
        return context.textColors.white;
    }
  }

  Color _badgeColor(BuildContext context) {
    switch (_type) {
      case BadgeType.danger:
        return context.elementColors.error;
      case BadgeType.success:
        return context.elementColors.success;
      case BadgeType.warning:
        return context.elementColors.attention;
      case BadgeType.info:
        return context.elementColors.info;
    }
  }
}
