// This file defines utilities for building various types of asset widgets,
// including icons, images, SVGs, network images, and Lottie animations.
// Each asset type has specific configurations that can be customized
// using the provided configuration classes and methods.

import 'package:app_ui/app_ui.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:petit_extension/petit_extension.dart';

/// A widget that dynamically builds assets (icons, images, SVGs, network images, Lottie animations)
/// based on the provided type and configuration.
class AppAssetBuilder extends StatelessWidget {
  const AppAssetBuilder._({
    required UIAssetTypeEnum type,
    IconData? icon,
    SvgGenImage? svg,
    AssetGenImage? image,
    LottieGenImage? lottie,
    String? networkImage,
    String? networkSvg,
    AssetBuilderConfig? config,
    VoidCallback? onTap,
    Map<String, String>? httpHeaders,
    Widget? onErrorWidget,
  })  : _type = type,
        _image = image,
        _svg = svg,
        _icon = icon,
        _lottie = lottie,
        _networkImage = networkImage,
        _networkSvg = networkSvg,
        _config = config,
        _onTap = onTap,
        _httpHeaders = httpHeaders,
        _onErrorWidget = onErrorWidget,
        assert(
          icon != null || svg != null || image != null || networkImage != null || networkSvg != null || lottie != null,
          'At least one asset must be provided',
        );

  /// Creates an [AppAssetBuilder] with an icon.
  factory AppAssetBuilder.icon({
    required IconData icon,

    ///Prefer use [AssetBuilderConfig.icon] to override size and color
    AssetBuilderConfig? config,
    VoidCallback? onTap,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.icon,
      icon: icon,
      config: config,
      onTap: onTap,
    );
  }

  /// Creates an [AppAssetBuilder] with an svg.
  factory AppAssetBuilder.svg({
    required SvgGenImage svg,

    ///Prefer use [AssetBuilderConfig.svg] to override height, width and color
    AssetBuilderConfig? config,
    VoidCallback? onTap,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.svg,
      svg: svg,
      config: config,
      onTap: onTap,
    );
  }

  @internal

  /// Creates an [AppAssetBuilder] with a network svg.
  factory AppAssetBuilder.svgNetwork({
    required String imageUrl,

    ///Prefer use [AssetBuilderConfig.svg] to override height, width and color
    AssetBuilderConfig? config,
    VoidCallback? onTap,
    Map<String, String>? httpHeaders,
    Widget? onErrorWidget,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.svg,
      networkSvg: imageUrl,
      config: config,
      onTap: onTap,
      httpHeaders: httpHeaders,
      onErrorWidget: onErrorWidget,
    );
  }

  /// Creates an [AppAssetBuilder] with an image.
  factory AppAssetBuilder.image({
    required AssetGenImage image,

    ///Prefer use [AssetBuilderConfig.image] to override height, width, fit and color
    AssetBuilderConfig? config,
    VoidCallback? onTap,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.image,
      image: image,
      config: config,
      onTap: onTap,
    );
  }

  @internal

  /// Creates an [AppAssetBuilder] with a network image.
  factory AppAssetBuilder.imageNetwork({
    required String imageUrl,
    AssetBuilderConfig? config,
    VoidCallback? onTap,
    Map<String, String>? httpHeaders,
    Widget? onErrorWidget,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.image,
      networkImage: imageUrl,
      config: config,
      onTap: onTap,
      httpHeaders: httpHeaders,
      onErrorWidget: onErrorWidget,
    );
  }

  /// Factory constructor to create an [AppAssetBuilder] with a network asset,
  /// determining type based on the file extension (.svg or others).
  factory AppAssetBuilder.network({
    required String url,

    ///Prefer use cascading config to override height, width, color and fit like
    ///AssetBuilderConfig.image().$svg() or AssetBuilderConfig.icon().$image()
    AssetBuilderConfig? config,
    VoidCallback? onTap,
    Map<String, String>? httpHeaders,
    Widget? onErrorWidget,
  }) {
    if (url.endsWith('.svg')) {
      return AppAssetBuilder.svgNetwork(
        imageUrl: url,
        config: config,
        onTap: onTap,
        httpHeaders: httpHeaders,
        onErrorWidget: onErrorWidget,
      );
    }
    return AppAssetBuilder.imageNetwork(imageUrl: url, config: config, onTap: onTap, httpHeaders: httpHeaders, onErrorWidget: onErrorWidget);
  }

  /// Creates an [AppAssetBuilder] with a lottie.
  factory AppAssetBuilder.lottie({
    required LottieGenImage lottie,

    ///Prefer use [AssetBuilderConfig.lottie] to override height, width, fit and repeat
    AssetBuilderConfig? config,
    VoidCallback? onTap,
  }) {
    return AppAssetBuilder._(
      type: UIAssetTypeEnum.lottie,
      lottie: lottie,
      config: config,
      onTap: onTap,
    );
  }

  final IconData? _icon;
  final SvgGenImage? _svg;
  final AssetGenImage? _image;
  final LottieGenImage? _lottie;
  final String? _networkImage;
  final String? _networkSvg;
  final AssetBuilderConfig? _config;
  final UIAssetTypeEnum _type;
  final VoidCallback? _onTap;
  final Map<String, String>? _httpHeaders;
  final Widget? _onErrorWidget;

  bool get isIcon => _type.isIcon;

  bool get isSvg => _type.isSvg;

  bool get isImage => _type.isImage;

  bool get isLottie => _type.isLottie;

  /// Returns a new [AppAssetBuilder] instance with a possibly overridden configuration.
  /// If self is null, the provided configuration will be used. Otherwise, the provided
  /// configuration will be merged with the self configuration.
  /// Merge priority is set to [AssetBuilderMergePriority.self]. It means that the current
  /// configuration will be prioritized over the provided one.
  /// You can change the priority by setting [priority] to [AssetBuilderMergePriority.other].
  AppAssetBuilder mayOverrideConfig({
    AssetBuilderConfig? config,
    AssetBuilderMergePriority priority = AssetBuilderMergePriority.self,
  }) {
    return AppAssetBuilder._(
      type: _type,
      icon: _icon,
      svg: _svg,
      image: _image,
      lottie: _lottie,
      networkImage: _networkImage,
      networkSvg: _networkSvg,
      config: _config?.merge(config, priority: priority) ?? config,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget widget() {
      if (_icon != null) {
        return Icon(
          _icon,
          size: _config?.size,
          color: _config?.iconColor,
        );
      }
      if (_svg != null) {
        return _svg.svg(
          height: _config?.sHeight,
          width: _config?.sWidth,
          fit: _config?.sFit ?? BoxFit.contain,
          colorFilter: _config?.svgColor.toSrcMode(),
        );
      }
      if (_image != null) {
        Image getImage() {
          return _image.image(
            height: _config?.iHeight,
            width: _config?.iWidth,
            fit: _config?.iFit,
            color: _config?.imageConfig?.color,
            colorBlendMode: _config?.imageConfig?.mode,
          );
        }

        if (_config?.shouldClipOval ?? false) {
          return ClipOval(
            child: getImage(),
          );
        }
        return getImage();
      }
      if (_lottie != null) {
        return _lottie.lottie(
          height: _config?.lHeight,
          width: _config?.lWidth,
          fit: _config?.lFit,
          repeat: _config?.repeat,
        );
      }
      if (_networkImage != null && _networkImage.isValidUrl) {
        AppNetworkImageWidget getImage() {
          return AppNetworkImageWidget(
            httpHeaders: _httpHeaders,
            imageUrl: _networkImage,
            height: _config?.iHeight,
            width: _config?.iWidth,
            fit: _config?.iFit,
            onErrorWidget: _onErrorWidget,
          );
        }

        if (_config?.shouldClipOval ?? false) {
          return ClipOval(
            child: getImage(),
          );
        }
        return getImage();
      }
      if (_networkSvg != null && _networkSvg.isValidUrl) {
        return AppNetworkImageWidget(
          httpHeaders: _httpHeaders,
          imageUrl: _networkSvg,
          height: _config?.sHeight,
          width: _config?.sWidth,
          fit: _config?.sFit ?? BoxFit.contain,
          onErrorWidget: _onErrorWidget,
        );
      }
      return const SizedBox.shrink();
    }

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: _onTap,
      child: widget(),
    );
  }
}

@internal
enum UIAssetTypeEnum {
  icon,
  svg,
  image,
  lottie,
  ;

  bool get isIcon => this == UIAssetTypeEnum.icon;

  bool get isSvg => this == UIAssetTypeEnum.svg;

  bool get isImage => this == UIAssetTypeEnum.image;

  bool get isLottie => this == UIAssetTypeEnum.lottie;
}

typedef ImageColor = ({Color? color, BlendMode? mode});

@internal
enum AssetBuilderMergePriority {
  self,
  other,
}

/// Configuration for customizing the appearance and behavior of asset widgets.
class AssetBuilderConfig extends Equatable {
  @internal
  const AssetBuilderConfig({
    this.size,
    this.iconColor,
    this.svgColor,
    this.imageConfig,
    this.shouldClipOval,
    this.iHeight,
    this.iWidth,
    this.sHeight,
    this.sWidth,
    this.lHeight,
    this.lWidth,
    this.iFit,
    this.sFit,
    this.lFit,
    this.repeat,
  });

  /// Icon-specific configuration.
  factory AssetBuilderConfig.icon({
    double? size,
    Color? color,
  }) {
    return AssetBuilderConfig(
      size: size,
      iconColor: color,
    );
  }

  /// SVG-specific configuration.
  factory AssetBuilderConfig.svg({
    double? height,
    double? width,
    Color? color,
    BoxFit? fit,
  }) {
    return AssetBuilderConfig(
      sHeight: height,
      sWidth: width,
      svgColor: color,
      sFit: fit,
    );
  }

  /// Image-specific configuration.
  factory AssetBuilderConfig.image({
    double? height,
    double? width,
    BoxFit? fit,
    ImageColor? color,
    bool? shouldClipOval,
  }) {
    return AssetBuilderConfig(
      iHeight: height,
      iWidth: width,
      iFit: fit,
      imageConfig: color,
      shouldClipOval: shouldClipOval,
    );
  }

  /// Lottie-specific configuration.
  factory AssetBuilderConfig.lottie({
    double? height,
    double? width,
    BoxFit? fit,
    bool? repeat,
  }) {
    return AssetBuilderConfig(
      lHeight: height,
      lWidth: width,
      lFit: fit,
      repeat: repeat,
    );
  }

  @internal
  final double? size;
  @internal
  final Color? iconColor;
  @internal
  final Color? svgColor;
  @internal
  final ImageColor? imageConfig;
  @internal
  final bool? shouldClipOval;
  @internal
  final double? iHeight;
  @internal
  final double? iWidth;
  @internal
  final double? sHeight;
  @internal
  final double? sWidth;
  @internal
  final double? lHeight;
  @internal
  final double? lWidth;
  @internal
  final BoxFit? iFit;
  @internal
  final BoxFit? sFit;
  @internal
  final BoxFit? lFit;
  @internal
  final bool? repeat;

  static const AssetBuilderConfig defaultConfig = AssetBuilderConfig();

  @internal

  /// Merges two [AssetBuilderConfig]s.
  AssetBuilderConfig merge(AssetBuilderConfig? other, {AssetBuilderMergePriority priority = AssetBuilderMergePriority.self}) {
    return switch (priority) {
      AssetBuilderMergePriority.self => AssetBuilderConfig(
          size: size ?? other?.size,
          iconColor: iconColor ?? other?.iconColor,
          svgColor: svgColor ?? other?.svgColor,
          repeat: repeat ?? other?.repeat,
          iHeight: iHeight ?? other?.iHeight,
          iWidth: iWidth ?? other?.iWidth,
          sHeight: sHeight ?? other?.sHeight,
          sWidth: sWidth ?? other?.sWidth,
          lHeight: lHeight ?? other?.lHeight,
          lWidth: lWidth ?? other?.lWidth,
          iFit: iFit ?? other?.iFit,
          sFit: sFit ?? other?.sFit,
          lFit: lFit ?? other?.lFit,
          shouldClipOval: shouldClipOval ?? other?.shouldClipOval,
        ),
      AssetBuilderMergePriority.other => AssetBuilderConfig(
          size: other?.size ?? size,
          iconColor: other?.iconColor ?? iconColor,
          svgColor: other?.svgColor ?? svgColor,
          repeat: other?.repeat ?? repeat,
          iHeight: other?.iHeight ?? iHeight,
          iWidth: other?.iWidth ?? iWidth,
          sHeight: other?.sHeight ?? sHeight,
          sWidth: other?.sWidth ?? sWidth,
          lHeight: other?.lHeight ?? lHeight,
          lWidth: other?.lWidth ?? lWidth,
          iFit: other?.iFit ?? iFit,
          sFit: other?.sFit ?? sFit,
          lFit: other?.lFit ?? lFit,
          shouldClipOval: other?.shouldClipOval ?? shouldClipOval,
        ),
    };
  }

  AssetBuilderConfig $icon({
    double? size,
    Color? color,

    ///Prefer completing $icon() with cascading $image() config
    bool couldApplySizeAsSquareForImage = false,

    ///Prefer completing $icon() with cascading $svg() config
    bool couldApplySizeAsSquareForSvg = false,

    ///Prefer completing $icon() with cascading $lottie() config
    bool couldApplySizeAsSquareForLottie = false,
  }) {
    return AssetBuilderConfig(
      size: size ?? this.size,
      iconColor: color ?? iconColor,
      svgColor: svgColor,
      imageConfig: imageConfig,
      iFit: iFit,
      sFit: sFit,
      lFit: lFit,
      repeat: repeat,
      iHeight: couldApplySizeAsSquareForImage ? size : iHeight,
      iWidth: couldApplySizeAsSquareForImage ? size : iWidth,
      sHeight: couldApplySizeAsSquareForSvg ? size : sHeight,
      sWidth: couldApplySizeAsSquareForSvg ? size : sWidth,
      lHeight: couldApplySizeAsSquareForLottie ? size : lHeight,
      lWidth: couldApplySizeAsSquareForLottie ? size : lWidth,
    );
  }

  AssetBuilderConfig $svg({
    double? height,
    double? width,
    Color? color,
    BoxFit? fit,

    ///Prefer completing $svg() with cascading $image() config
    bool couldApplySizeForImage = false,

    ///Prefer completing $svg() with cascading $lottie() config
    bool couldApplySizeForLottie = false,

    ///Prefer completing $svg() with cascading $icon() config
    bool couldApplyColorForIcon = false,
    bool shouldClipOval = false,
  }) {
    return AssetBuilderConfig(
      size: size,
      iconColor: couldApplyColorForIcon ? color : iconColor,
      svgColor: color ?? svgColor,
      imageConfig: imageConfig,
      shouldClipOval: shouldClipOval,
      iFit: iFit,
      sFit: fit ?? sFit,
      lFit: lFit,
      repeat: repeat,
      iHeight: couldApplySizeForImage ? height : iHeight,
      iWidth: couldApplySizeForImage ? width : iWidth,
      sHeight: height ?? sHeight,
      sWidth: width ?? sWidth,
      lHeight: couldApplySizeForLottie ? height : lHeight,
      lWidth: couldApplySizeForLottie ? width : lWidth,
    );
  }

  AssetBuilderConfig $image({
    double? height,
    double? width,
    BoxFit? fit,
    ImageColor? color,
    bool? shouldClipOval,

    ///Prefer completing $image() with cascading $svg() config
    bool couldApplySizeForSvg = false,

    ///Prefer completing $image() with cascading $lottie() config
    bool couldApplySizeForLottie = false,
  }) {
    return AssetBuilderConfig(
      size: size,
      iconColor: iconColor,
      svgColor: svgColor,
      imageConfig: color ?? imageConfig,
      shouldClipOval: shouldClipOval ?? this.shouldClipOval,
      iFit: fit ?? iFit,
      sFit: sFit,
      lFit: lFit,
      repeat: repeat,
      iHeight: height ?? iHeight,
      iWidth: width ?? iWidth,
      sHeight: couldApplySizeForSvg ? height : sHeight,
      sWidth: couldApplySizeForSvg ? width : sWidth,
      lHeight: couldApplySizeForLottie ? height : lHeight,
      lWidth: couldApplySizeForLottie ? width : lWidth,
    );
  }

  AssetBuilderConfig $lottie({
    double? height,
    double? width,
    BoxFit? fit,
    bool? repeat,

    ///Prefer completing $lottie() with cascading $svg() config
    bool couldApplySizeForSvg = false,

    ///Prefer completing $lottie() with cascading $image() config
    bool couldApplySizeForImage = false,
  }) {
    return AssetBuilderConfig(
      size: size,
      iconColor: iconColor,
      svgColor: svgColor,
      lFit: fit ?? lFit,
      sFit: sFit,
      iFit: iFit,
      repeat: repeat,
      iHeight: couldApplySizeForImage ? height : iHeight,
      iWidth: couldApplySizeForImage ? width : iWidth,
      sHeight: couldApplySizeForSvg ? height : sHeight,
      sWidth: couldApplySizeForSvg ? width : sWidth,
      lHeight: height ?? lHeight,
      lWidth: width ?? lWidth,
    );
  }

  @override
  List<Object?> get props => [
        size,
        iconColor,
        svgColor,
        imageConfig,
        iHeight,
        iWidth,
        sHeight,
        sWidth,
        lHeight,
        lWidth,
        iFit,
        sFit,
        lFit,
        repeat,
      ];
}
