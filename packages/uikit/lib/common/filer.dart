// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:im_uikit/components/buttons/ink_well.dart';
import 'package:im_uikit/components/indicators/badge.dart';
import 'package:im_uikit/gen/assets.gen.dart';
import 'package:im_uikit/theme/app_typography_theme_data.dart';
import 'package:im_uikit/theme/color_theme_data.dart';

enum FilterType {
  tab,
  filter,
  sort,
}

const _top = -5.0;

class Filter extends StatelessWidget {
  const Filter.tab({
    required this.title,
    this.onTap,
    this.count = 0,
    this.isEnabled = true,
    this.focusNode,
    super.key,
  }) : _type = FilterType.tab;

  const Filter.filter({
    required this.title,
    this.onTap,
    this.count = 0,
    this.isEnabled = true,
    this.focusNode,
    super.key,
  }) : _type = FilterType.filter;

  const Filter.sort({
    this.onTap,
    this.count = 0,
    this.isEnabled = true,
    this.focusNode,
    super.key,
  })  : title = null,
        _type = FilterType.sort;

  final String? title;
  final int count;
  final VoidCallback? onTap;
  final bool isEnabled;
  final FocusNode? focusNode;

  final FilterType _type;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyBadge.danger(
          top: _top,
          end: _end,
          count: count,
          child: MyInkWell(
            onTap: onTap,
            padding: _padding,
            focusNode: focusNode,
            color: const Color(0xFFF2F4F7),
            splashColor: const Color(0xFFB6B6B6),
            border: focusNode?.hasFocus == true
                ? Border.all(
                    width: 1.5,
                    color: const Color(0xFF00DB2C),
                  )
                : null,
            borderRadius: BorderRadius.circular(100),
            hoverColor: context.buttonColors.secondary,
            child: Row(
              children: [
                UikitAssets.icons16.filter.svg(
                  colorFilter: ColorFilter.mode(
                    _color,
                    BlendMode.srcIn,
                  ),
                ),
                if (title != null) ...[
                  const SizedBox(width: 4),
                  Text(
                    title!,
                    style: context.labelLarge.medium.copyWith(
                      color: _color,
                    ),
                  ),
                ],
                if (_type == FilterType.filter) ...[
                  const SizedBox(width: 4),
                  UikitAssets.icons20.chevronDown.svg(
                    colorFilter: ColorFilter.mode(
                      _color,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  double get _end {
    switch (_type) {
      case FilterType.tab:
      case FilterType.filter:
        return -11;
      case FilterType.sort:
        return -7;
    }
  }

  EdgeInsets get _padding {
    switch (_type) {
      case FilterType.tab:
      case FilterType.filter:
        return const EdgeInsets.only(
          top: 4,
          left: 12,
          right: 10,
          bottom: 4,
        );
      case FilterType.sort:
        return const EdgeInsets.all(6);
    }
  }

  Color get _color {
    if (!isEnabled) {
      return const Color(0xFFC4C4C4);
    }
    return const Color(0xFF344054);
  }
}
