import 'dart:async';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/gift/widget/gift_box_animation.dart';
import 'package:travel/src/pages/gift/widget/gift_box_image.dart';

class ClaimResultDialog extends HookWidget {
  const ClaimResultDialog({super.key, required this.claim});

  final ClaimHistory claim;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final timer = Timer(const Duration(seconds: 3), () {
        if (context.canPop()) context.pop();
      });
      return timer.cancel;
    }, const []);

    final appColors = context.appColors;
    final onSurface = appColors.static.white;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: 300,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: appColors.accent.giftSurface,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: appColors.service.shadow,
              offset: const Offset(0, 6),
              blurRadius: 34,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              left: 84,
              top: 20,
              width: 132,
              height: 132,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 56, sigmaY: 56),
                child: const GiftBoxImage(size: 132, zoom: kGiftBoxCropZoom),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 256,
              child: Align(
                alignment: Alignment.topCenter,
                child: Assets.png.giftGlowDialog.image(width: 248, height: 256),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.translate(
                        offset: const Offset(-4, -8),
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 100,
                            sigmaY: 100,
                          ),
                          child: Container(
                            width: 132,
                            height: 132,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: appColors.brandSeaBlue,
                            ),
                          ),
                        ),
                      ),
                      const GiftBoxAnimation(
                        size: 132,
                        zoom: kGiftBoxCropZoom,
                      ),
                    ],
                  ),
                  Column(
                    spacing: 4,
                    children: [
                      Text(
                        claim
                            .size()
                            .plus(" ")
                            .plus(
                              claim.isGB
                                  ? context.localization.gb
                                  : context.localization.mb,
                            ),
                        textAlign: TextAlign.center,
                      ).h2(color: onSurface),
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          context.localization.claim_dialog_caption,
                          textAlign: TextAlign.center,
                        ).bodyMd(color: onSurface),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
