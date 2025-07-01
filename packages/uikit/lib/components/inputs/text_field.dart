// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:im_uikit/components/indicators/progress_indicator.dart';
import 'package:im_uikit/gen/assets.gen.dart';
import 'package:im_uikit/theme/app_typography_theme_data.dart';
import 'package:im_uikit/theme/color_theme_data.dart';

enum InputSize {
  small,
  medium,
  large,
}

enum InputStatus {
  error,
  warning,
  success,
  info,
}

class Input extends StatefulWidget {
  const Input({
    this.size = InputSize.large,
    this.label,
    this.suffixText,
    this.controller,
    this.initialValue,
    //
    this.hintText,
    this.captionIconPath,
    this.captionText,
    this.captionHelperText,
    this.status = InputStatus.info,
    //
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.isRequired = false,
    this.canClear = true,
    this.isLoading = false,
    //
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    //
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    //
    this.leftIcon,
    this.rightIcon,
    //
    this.onTap,
    this.onChanged,
    this.validator,
    this.onEditingComplete,
    super.key,
  });

  final String? label;
  final String? initialValue;
  final String? suffixText;
  final TextEditingController? controller;

  final InputSize size;
  final InputStatus status;

  final String? hintText;

  final String? captionIconPath;
  final String? captionText;
  final String? captionHelperText;

  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool obscureText;
  final bool isRequired;
  final bool canClear;
  final bool isLoading;

  final FocusNode? focusNode;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  final int? minLines;
  final int maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  final Widget? leftIcon;
  final Widget? rightIcon;

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  //
  late FocusNode focusNode;
  late TextEditingController controller;

  bool get showClear =>
      widget.canClear && focusNode.hasFocus && controller.text.isNotEmpty;

  @override
  void initState() {
    focusNode = widget.focusNode ?? FocusNode();
    controller = widget.controller ?? TextEditingController();

    controller.text = widget.initialValue ?? '';

    if (widget.canClear) {
      controller.addListener(updateState);
      focusNode.addListener(updateState);
    }
    super.initState();
  }

  void updateState() => {if (mounted) setState(() {})};

  @override
  void dispose() {
    if (widget.canClear) {
      controller.removeListener(updateState);
      focusNode.removeListener(updateState);
    }
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.enabled ? 1 : 0.5,
      child: FormField(
        validator: widget.validator,
        initialValue: controller.text,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        builder: (FormFieldState<String> field) {
          return Column(
            children: [
              GestureDetector(
                onTap: focusNode.requestFocus,
                child: Container(
                  height: _inputHeight,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: _borderColor,
                    ),
                    color: context.fieldColors.background,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    children: [
                      if (widget.leftIcon != null) ...[
                        widget.leftIcon!,
                        const SizedBox(width: 8),
                      ],
                      Expanded(
                        child: TextField(
                          controller: controller,
                          //
                          focusNode: focusNode,
                          enabled: widget.enabled,
                          readOnly: widget.readOnly,
                          autofocus: widget.autofocus,
                          textAlign: widget.textAlign,
                          cursorColor: Colors.black,
                          style: context.bodyLarge.medium.copyWith(
                            color: Colors.black.withValues(alpha: 0.5),
                          ),
                          obscureText: widget.obscureText,
                          keyboardType: widget.keyboardType,
                          textInputAction: widget.textInputAction,
                          textCapitalization: widget.textCapitalization,
                          //
                          minLines: widget.minLines,
                          maxLines: widget.maxLines,
                          maxLength: widget.maxLength,
                          buildCounter: buildCounter,
                          inputFormatters: widget.inputFormatters,
                          //
                          onTap: widget.onTap,
                          onChanged: widget.onChanged,
                          onEditingComplete: widget.onEditingComplete,
                          //
                          decoration: _decoration,
                          //
                          textAlignVertical: TextAlignVertical.center,
                          magnifierConfiguration:
                              TextMagnifierConfiguration.disabled,
                        ),
                      ),
                      if (widget.isLoading) ...[
                        const SizedBox(width: 8),
                        getLoading(),
                      ],
                      if (showClear) ...[
                        const SizedBox(width: 8),
                        clearButton(),
                      ],
                      if (widget.rightIcon != null) ...[
                        const SizedBox(width: 8),
                        widget.rightIcon!,
                      ],
                    ],
                  ),
                ),
              ),
              _captionWidget(),
            ],
          );
        },
      ),
    );
  }

  Color get _borderColor {
    final isFocused = focusNode.hasFocus;
    if (!widget.enabled) {
      return Colors.transparent;
    }
    switch (widget.status) {
      case InputStatus.error:
        return context.fieldColors.error;
      case InputStatus.warning:
        return context.fieldColors.warning;
      case InputStatus.success:
        return context.fieldColors.success;
      default:
        return isFocused && widget.enabled
            ? context.fieldColors.borderFocused
            : Colors.transparent;
    }
  }

  double get _inputHeight {
    switch (widget.size) {
      case InputSize.small:
        return 48;
      case InputSize.medium:
        return 56;
      case InputSize.large:
        return 64;
    }
  }

  Widget getLoading() {
    return const MyProgressIndicator(
      size: 24,
      color: Colors.black,
    );
  }

  Widget clearButton() {
    return SizedBox(
      width: 24,
      height: 24,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: _onClear,
        child: UikitAssets.icons24.closeCircle.svg(),
      ),
    );
  }

  void _onClear() {
    controller.clear();
    widget.onChanged?.call('');
  }

  InputDecoration get _decoration {
    return InputDecoration(
      label: Row(
        children: [
          Text(
            widget.label ?? '',
            style: context.titleMedium.medium.copyWith(
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
          if (widget.isRequired)
            Text(
              '*',
              style: context.titleLarge.medium.copyWith(
                color: Colors.red,
              ),
            ),
        ],
      ),
      labelStyle: context.labelMedium.regular.copyWith(
        color: Colors.black.withValues(alpha: 0.5),
      ),
      hintStyle: context.bodyLarge.medium.copyWith(
        color: Colors.black.withValues(alpha: 0.5),
      ),
      helperStyle: context.labelMedium.regular.copyWith(
        color: Colors.black.withValues(alpha: 0.5),
      ),
      floatingLabelStyle: context.labelMedium.regular.copyWith(
        color: Colors.black.withValues(alpha: 0.5),
      ),
      counterStyle: context.labelMedium.regular.copyWith(
        color: Colors.black.withValues(alpha: 0.5),
      ),
      //
      hintText: widget.enabled ? widget.hintText : null,
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
      //
      border: _border,
      errorBorder: _border,
      focusedBorder: _border,
      enabledBorder: _border,
      disabledBorder: _border,
    );
  }

  InputBorder get _border {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(16),
    );
  }

  Widget _captionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    if (widget.captionIconPath != null) ...[
                      SvgPicture.asset(
                        widget.captionIconPath!,
                        width: 16,
                        height: 16,
                        fit: BoxFit.contain,
                        package: UikitAssets.package,
                        colorFilter: ColorFilter.mode(
                          _captionIconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      const SizedBox(width: 4),
                    ],
                    Text(
                      widget.captionText ?? '',
                      style: context.labelMedium.regular.copyWith(
                        color: _captionColor,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
              if (widget.captionHelperText != null) ...[
                Text(
                  widget.captionHelperText ?? '',
                  style: context.labelMedium.regular.copyWith(
                    color: _captionColor,
                  ),
                  maxLines: 2,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  Color get _captionIconColor {
    if (!widget.enabled) {
      return Colors.black.withValues(alpha: 0.5);
    }
    switch (widget.status) {
      case InputStatus.error:
        return context.textColors.error;
      case InputStatus.warning:
        return context.textColors.warning;
      case InputStatus.success:
        return context.textColors.success;
      default:
        return Colors.black.withValues(alpha: 0.5);
    }
  }

  Color get _captionColor {
    if (!widget.enabled) {
      return Colors.black.withValues(alpha: 0.5);
    }
    switch (widget.status) {
      case InputStatus.error:
        return context.textColors.error;
      case InputStatus.warning:
        return context.textColors.warning;
      case InputStatus.success:
        return context.textColors.success;
      default:
        return Colors.black.withValues(alpha: 0.5);
    }
  }

  Widget? buildCounter(
    BuildContext context, {
    required int currentLength,
    required int? maxLength,
    required bool isFocused,
  }) {
    return null;
  }
}
