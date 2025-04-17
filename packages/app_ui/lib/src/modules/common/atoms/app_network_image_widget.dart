import 'dart:io';

import 'package:app_ui/src/modules/common/views/app_image_view.dart';
import 'package:app_ui/src/tokens/spacings/spacings.dart';
import 'package:app_ui/src/tokens/themes/extension.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petit_extension/petit_extension.dart';

/// App cached network image
class AppNetworkImageWidget extends StatelessWidget {
  /// Creates a [AppNetworkImageWidget].
  const AppNetworkImageWidget({
    required this.imageUrl,
    super.key,
    this.height,
    this.width,
    this.fit,
    this.placeHolder,
    this.useHero = false,
    this.heroTag,
    this.allowShowImageAction = false,
    this.httpHeaders,
    this.onErrorWidget,
  });

  /// The image url
  final String imageUrl;

  /// The height of the image
  final double? height;

  /// The width of the image
  final double? width;

  /// The fit of the image
  final BoxFit? fit;

  /// The placeholder of the image
  final Widget? placeHolder;
  final Widget? onErrorWidget;
  final bool useHero;
  final String? heroTag;
  final bool allowShowImageAction;
  final Map<String, String>? httpHeaders;

  @override
  Widget build(BuildContext context) {
    Widget image() {
      final isSvg = imageUrl.endsWith('.svg');
      if (isSvg) {
        return SizedBox(
          height: height,
          width: width,
          child: Align(
            child: imageUrl.isValidUrl
                ? SvgPicture.network(
                    imageUrl,
                    headers: httpHeaders,
                    fit: fit ?? BoxFit.cover,
                    height: height,
                    width: width,
                    placeholderBuilder: (ctx) => placeHolder ?? const _DefaultLoaderPlaceHolder(),
                  )
                : SvgPicture.asset(
                    imageUrl,
                    fit: fit ?? BoxFit.cover,
                    height: height,
                    width: width,
                    placeholderBuilder: (ctx) => placeHolder ?? const _DefaultLoaderPlaceHolder(),
                  ),
          ),
        );
      }
      return Image.asset(""); //TODO: Resoudre le problème  des cached netword Image
      // return CachedNetworkImage(
      //   httpHeaders: httpHeaders,
      //   imageUrl: imageUrl,
      //   fit: fit ?? BoxFit.cover,
      //   height: height,
      //   width: width,
      //   errorWidget: (ctx, img, _) =>
      //       onErrorWidget ??
      //       Center(
      //         child: Icon(
      //           Icons.error,
      //           color: context.theme.colorScheme.error,
      //           size: AppSizes.f.s20,
      //         ),
      //       ),
      //   placeholder: (ctx, img) => placeHolder ?? const _DefaultLoaderPlaceHolder(),
      // );
    }

    Widget hero() {
      if (useHero) {
        return Hero(
          tag: heroTag ?? imageUrl,
          child: image(),
        );
      }
      return image();
    }

    return allowShowImageAction
        ? InkWell(
            onTap: () {
              useShowImage(
                context,
                imageUrl,
              );
            },
            child: hero(),
          )
        : hero();
  }
}

class _DefaultLoaderPlaceHolder extends StatelessWidget {
  const _DefaultLoaderPlaceHolder();

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: Platform.isIOS ? EdgeInsets.zero : AppPaddings.custom(2).all,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: AppSizes.w.custom(2),
        ),
      ),
    );
  }
}
