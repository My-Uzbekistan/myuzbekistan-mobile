import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class AppNetworkImage extends StatefulWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;
  final Color? color;
  final BlendMode? colorBlendMode;
  final FilterQuality filterQuality;
  final Duration? cacheMaxAge;
  final Widget placeholder;
  final Widget? loadingWidget;
  final ExtendedImageMode mode;
  final InitGestureConfigHandler? initGestureConfigHandler;

  const AppNetworkImage(
    this.url, {
    super.key,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
    this.color,
    this.colorBlendMode,
    this.filterQuality = FilterQuality.low,
    this.cacheMaxAge,
    this.placeholder = const SizedBox.shrink(),
    this.loadingWidget,
    this.mode = ExtendedImageMode.none,
    this.initGestureConfigHandler,
  });

  @override
  State<AppNetworkImage> createState() => _AppNetworkImageState();
}

class _AppNetworkImageState extends State<AppNetworkImage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (widget.url.isEmpty) {
      return widget.placeholder;
    }

    return ExtendedImage.network(
      widget.url,
      key: ValueKey(widget.url),
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      alignment: widget.alignment,
      color: widget.color,
      colorBlendMode: widget.colorBlendMode,
      filterQuality: widget.filterQuality,
      cache: true,
      cacheMaxAge: widget.cacheMaxAge,
      mode: widget.mode,
      initGestureConfigHandler: widget.initGestureConfigHandler,
      loadStateChanged: (state) => switch (state.extendedImageLoadState) {
        LoadState.completed => null,
        LoadState.loading => widget.loadingWidget ?? widget.placeholder,
        LoadState.failed => widget.placeholder,
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
