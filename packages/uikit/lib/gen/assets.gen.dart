/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

// Flutter imports:
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIcons24Gen {
  const $AssetsIcons24Gen();

  /// File path: assets/icons24/arrow_down.svg
  SvgGenImage get arrowDown =>
      const SvgGenImage('assets/icons24/arrow_down.svg');

  /// File path: assets/icons24/arrow_left.svg
  SvgGenImage get arrowLeft =>
      const SvgGenImage('assets/icons24/arrow_left.svg');

  /// File path: assets/icons24/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icons24/bell.svg');

  /// File path: assets/icons24/briefcase.svg
  SvgGenImage get briefcase =>
      const SvgGenImage('assets/icons24/briefcase.svg');

  /// File path: assets/icons24/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons24/calendar.svg');

  /// File path: assets/icons24/card.svg
  SvgGenImage get card => const SvgGenImage('assets/icons24/card.svg');

  /// File path: assets/icons24/card_arrow.svg
  SvgGenImage get cardArrow =>
      const SvgGenImage('assets/icons24/card_arrow.svg');

  /// File path: assets/icons24/check.svg
  SvgGenImage get check => const SvgGenImage('assets/icons24/check.svg');

  /// File path: assets/icons24/close_circle.svg
  SvgGenImage get closeCircle =>
      const SvgGenImage('assets/icons24/close_circle.svg');

  /// File path: assets/icons24/eye_off.svg
  SvgGenImage get eyeOff => const SvgGenImage('assets/icons24/eye_off.svg');

  /// File path: assets/icons24/eye_on.svg
  SvgGenImage get eyeOn => const SvgGenImage('assets/icons24/eye_on.svg');

  /// File path: assets/icons24/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons24/home.svg');

  /// File path: assets/icons24/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons24/plus.svg');

  /// File path: assets/icons24/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons24/profile.svg');

  /// File path: assets/icons24/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/icons24/scan.svg');

  /// File path: assets/icons24/withdraw.svg
  SvgGenImage get withdraw => const SvgGenImage('assets/icons24/withdraw.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    arrowDown,
    arrowLeft,
    bell,
    briefcase,
    calendar,
    card,
    cardArrow,
    check,
    closeCircle,
    eyeOff,
    eyeOn,
    home,
    plus,
    profile,
    scan,
    withdraw,
  ];
}

class UikitAssets {
  const UikitAssets._();

  static const String package = 'im_uikit';

  static const $AssetsIcons24Gen icons24 = $AssetsIcons24Gen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'im_uikit';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/im_uikit/$_assetName';
}
