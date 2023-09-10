/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/icons/linkedin.png');

  /// File path: assets/icons/nav.png
  AssetGenImage get nav => const AssetGenImage('assets/icons/nav.png');

  /// List of all assets
  List<AssetGenImage> get values => [facebook, google, linkedin, nav];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get backgroundimage =>
      const AssetGenImage('assets/images/background_image.jpeg');

  /// File path: assets/images/avatar.webp
  AssetGenImage get avatar => const AssetGenImage('assets/images/backgrund_image.jpeg');

  /// File path: assets/images/default_user_avatar.png
  AssetGenImage get backgroundills =>
      const AssetGenImage('assets/images/Messaging-rafiki.png');

  /// File path: assets/images/head_memoji_1.png
  AssetGenImage get headMemoji1 =>
      const AssetGenImage('assets/images/head_memoji_1.png');

  /// File path: assets/images/header.jpg
  AssetGenImage get header => const AssetGenImage('assets/images/header.jpg');

  /// File path: assets/images/wave_repeat.jpg
  AssetGenImage get waveRepeat =>
      const AssetGenImage('assets/images/wave_repeat.jpg');

  /// File path: assets/images/waves.png
  AssetGenImage get waves => const AssetGenImage('assets/images/waves.png');

  /// File path: assets/images/waves_new_repat.png
  AssetGenImage get wavesNewRepat =>
      const AssetGenImage('assets/images/waves_new_repat.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        backgroundimage,
        avatar,
        backgroundills,
        headMemoji1,
        header,
        waveRepeat,
        waves,
        wavesNewRepat
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}