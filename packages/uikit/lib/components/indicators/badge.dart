// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:badges/badges.dart' as badges;

// Project imports:
import 'package:im_uikit/uikit.dart';

enum BadgeType {
  danger,
  success,
  warning,
  info,
}

class MyBadge extends StatelessWidget {
  const MyBadge.danger({
    required this.count,
    super.key,
  }) : _type = BadgeType.danger;

  final int count;

  final BadgeType _type;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      showBadge: count > 0,
      badgeAnimation: const badges.BadgeAnimation.scale(),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.square,
        badgeColor: _badgeColor(context),
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
          vertical: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      badgeContent: Text(
        count.toString(),
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 12,
              color: _textColor(context),
            ),
      ),
    );
  }

  Color _textColor(BuildContext context) {
    switch (_type) {
      case BadgeType.danger:
      case BadgeType.success:
      case BadgeType.warning:
      case BadgeType.info:
        return Theme.of(context).textColors.white;
    }
  }

  Color _badgeColor(BuildContext context) {
    switch (_type) {
      case BadgeType.danger:
        return Theme.of(context).elementColors.error;
      case BadgeType.success:
        return Theme.of(context).elementColors.success;
      case BadgeType.warning:
        return Theme.of(context).elementColors.attention;
      case BadgeType.info:
        return Theme.of(context).elementColors.info;
    }
  }
}
