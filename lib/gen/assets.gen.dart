/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_apple.svg
  SvgGenImage get iconApple => const SvgGenImage('assets/icons/icon_apple.svg');

  /// File path: assets/icons/icon_bookmark.svg
  SvgGenImage get iconBookmark =>
      const SvgGenImage('assets/icons/icon_bookmark.svg');

  /// File path: assets/icons/icon_bookmark_selected.svg
  SvgGenImage get iconBookmarkSelected =>
      const SvgGenImage('assets/icons/icon_bookmark_selected.svg');

  /// File path: assets/icons/icon_charm_tick.svg
  SvgGenImage get iconCharmTick =>
      const SvgGenImage('assets/icons/icon_charm_tick.svg');

  /// File path: assets/icons/icon_chat.svg
  SvgGenImage get iconChat => const SvgGenImage('assets/icons/icon_chat.svg');

  /// File path: assets/icons/icon_google.svg
  SvgGenImage get iconGoogle =>
      const SvgGenImage('assets/icons/icon_google.svg');

  /// File path: assets/icons/icon_home.svg
  SvgGenImage get iconHome => const SvgGenImage('assets/icons/icon_home.svg');

  /// File path: assets/icons/icon_home_selected.svg
  SvgGenImage get iconHomeSelected =>
      const SvgGenImage('assets/icons/icon_home_selected.svg');

  /// File path: assets/icons/icon_location.svg
  SvgGenImage get iconLocation =>
      const SvgGenImage('assets/icons/icon_location.svg');

  /// File path: assets/icons/icon_logo_light.svg
  SvgGenImage get iconLogoLight =>
      const SvgGenImage('assets/icons/icon_logo_light.svg');

  /// File path: assets/icons/icon_message_selected.svg
  SvgGenImage get iconMessageSelected =>
      const SvgGenImage('assets/icons/icon_message_selected.svg');

  /// File path: assets/icons/icon_notification.svg
  SvgGenImage get iconNotification =>
      const SvgGenImage('assets/icons/icon_notification.svg');

  /// File path: assets/icons/icon_outline_back.svg
  SvgGenImage get iconOutlineBack =>
      const SvgGenImage('assets/icons/icon_outline_back.svg');

  /// File path: assets/icons/icon_profile.svg
  SvgGenImage get iconProfile =>
      const SvgGenImage('assets/icons/icon_profile.svg');

  /// File path: assets/icons/icon_profile_selected.svg
  SvgGenImage get iconProfileSelected =>
      const SvgGenImage('assets/icons/icon_profile_selected.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        iconApple,
        iconBookmark,
        iconBookmarkSelected,
        iconCharmTick,
        iconChat,
        iconGoogle,
        iconHome,
        iconHomeSelected,
        iconLocation,
        iconLogoLight,
        iconMessageSelected,
        iconNotification,
        iconOutlineBack,
        iconProfile,
        iconProfileSelected
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_user_profile.png
  AssetGenImage get imageUserProfile =>
      const AssetGenImage('assets/images/image_user_profile.png');

  /// File path: assets/images/onboarding_image.jpg
  AssetGenImage get onboardingImage =>
      const AssetGenImage('assets/images/onboarding_image.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [imageUserProfile, onboardingImage];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
