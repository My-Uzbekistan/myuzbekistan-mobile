import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceHeroBackground extends StatelessWidget {
  const FinanceHeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColoredBox(color: context.appColors.service.heroSurface),
            Positioned(
              right: -180,
              top: -120,
              child: Opacity(
                opacity: 0.5,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                  child: Assets.svg.financeHeroGlow.path.toSvgImage(
                    width: 585,
                    height: 668,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
