import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

const financeHeroBackgroundColor = Color(0xff0E0E10);

const _glowWidth = 585.0;
const _glowHeight = 668.0;
const _glowLeft = -30.0;
const _glowTop = -120.0;
const _glowBlurSigma = 60.0;
const _glowOpacity = 0.5;

class FinanceHeroBackground extends StatelessWidget {
  const FinanceHeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const ColoredBox(color: financeHeroBackgroundColor),
            Positioned(
              left: _glowLeft,
              top: _glowTop,
              child: Opacity(
                opacity: _glowOpacity,
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: _glowBlurSigma,
                    sigmaY: _glowBlurSigma,
                  ),
                  child: Assets.svg.financeHeroGlow.path.toSvgImage(
                    width: _glowWidth,
                    height: _glowHeight,
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
