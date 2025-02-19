import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class StarsBadge extends StatelessWidget {
  final int stars;
  const StarsBadge({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          constraints: BoxConstraints(minHeight: 20, minWidth: 36),
          alignment: Alignment.center,
          child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 32.0, sigmaY: 32.0), // Blur 32

              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.64),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 4,
                    children: [
                      Text(
                        "$stars",
                        style: CustomTypography.labelSm
                            .copyWith(color: Colors.white),
                      ),
                      Assets.svgStar.toSvgImage()
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
