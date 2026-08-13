import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NearestPlaceLogo extends StatelessWidget {
  final String? url;

  const NearestPlaceLogo({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 40,
        width: 40,
        child: RepaintBoundary(
          child: ExtendedImage.network(
            url.orEmpty(),
            cache: true,
            cacheMaxAge: const Duration(days: 6),
            fit: BoxFit.cover,
            loadStateChanged: (state) {
              switch (state.extendedImageLoadState) {
                case LoadState.completed:
                  return AnimatedOpacity(
                    opacity: 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: state.completedWidget,
                  );
                default:
                  return ColoredBox(color: context.appColors.fill.tertiary);
              }
            },
          ),
        ),
      ),
    );
  }
}
