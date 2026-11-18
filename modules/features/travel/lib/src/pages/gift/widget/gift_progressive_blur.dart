import 'dart:ui';

import 'package:flutter/material.dart';

class GiftProgressiveBlur extends StatelessWidget {
  const GiftProgressiveBlur({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        _blurLayer(sigma: 8, from: 0.25, to: 0.70),
        _blurLayer(sigma: 20, from: 0.65, to: 1),
      ],
    );
  }

  Widget _blurLayer({
    required double sigma,
    required double from,
    required double to,
  }) {
    return ShaderMask(
      blendMode: BlendMode.dstIn,
      shaderCallback:
          (rect) => LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [Color(0x00FFFFFF), Color(0xFFFFFFFF)],
            stops: [from, to],
          ).createShader(rect),
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
        child: child,
      ),
    );
  }
}
