import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CardViewBackground extends StatelessWidget {
  final String? imageUrl;

  const CardViewBackground({super.key, this.imageUrl});

  static const _imageWidthFactor = 0.5831;

  @override
  Widget build(BuildContext context) {
    final black = context.appColors.static.black;
    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            alignment: Alignment.centerRight,
            child: FractionallySizedBox(
              widthFactor: _imageWidthFactor,
              heightFactor: 1,
              child: AppNetworkImage(
                imageUrl ?? "",
                cacheMaxAge: const Duration(days: 10),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.4752, 0.5627, 1],
                colors: [
                  black,
                  black.withValues(alpha: 0.9),
                  black.withValues(alpha: 0.03),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
