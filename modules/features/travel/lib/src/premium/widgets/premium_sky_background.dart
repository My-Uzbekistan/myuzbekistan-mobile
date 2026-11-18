import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PremiumSkyBackground extends StatelessWidget {
  final bool fadeOut;

  const PremiumSkyBackground({super.key, this.fadeOut = false});

  @override
  Widget build(BuildContext context) {
    final image = Assets.png.premiumBg.image(
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.topCenter,
    );

    if (!fadeOut) return image;

    return ColoredBox(
      color: context.appColors.background.underlayer,
      child: ShaderMask(
        blendMode: BlendMode.dstIn,
        shaderCallback: (bounds) => LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0, 0.3, 0.5],
          colors: [
            Colors.white,
            Colors.white.withValues(alpha: 0.8),
            Colors.transparent,
          ],
        ).createShader(bounds),
        child: image,
      ),
    );
  }
}
