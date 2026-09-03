import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart';
import 'package:travel/src/pages/gift/widget/claim_result_dialog.dart';
import 'package:travel/src/pages/gift/widget/gift_box_animation.dart';

class MainGiftPage extends StatelessWidget {
  const MainGiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    final appColors = context.appColors;
    final giftBloc = context.read<GiftBloc>();

    return BlocConsumer<GiftBloc, GiftBlocState>(
      listenWhen:
          (previous, current) =>
              current.activeClaim != null ||
              (current.errorMessage != null &&
                  previous.errorMessage != current.errorMessage),
      listener: (context, state) {
        if (state.errorMessage != null) {
          Toast.showToast(state.errorMessage!);
          return;
        }
        final claim = state.activeClaim;
        if (claim == null) return;
        final navigator = Navigator.of(context, rootNavigator: true);
        final barrierColor = appColors.service.overlay;
        giftBloc.add(GiftBlocEvent.clearActiveGift());
        context.pop();
        navigator.push(
          DialogRoute<void>(
            context: navigator.context,
            barrierColor: barrierColor,
            builder: (context) => ClaimResultDialog(claim: claim),
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          backgroundColor: appColors.accent.giftSurface,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(bottom: padding.bottom + 8),
            child: AppActionButton(
              actionText: context.localization.gift_page_action,
              sizeType: ActionButtonSizeType.large,
              isLoading: state.isLoading,
              onPressed: () => giftBloc.add(GiftBlocEvent.activeGift()),
              containerColor: appColors.static.white,
              contentColor: appColors.brandSeaBlue,
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: Assets.png.giftMainBg.image(fit: BoxFit.cover),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                height: size.height,
                child: Center(
                  child: OverflowBox(
                    maxWidth: double.infinity,
                    maxHeight: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        RepaintBoundary(
                          child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              Transform.translate(
                                offset: const Offset(86.88, -59.62),
                                child: Transform.rotate(
                                  angle: 30 * pi / 180,
                                  child: _blurredGoldGift(),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(-90.12, -61.62),
                                child: Transform.rotate(
                                  angle: 165 * pi / 180,
                                  child: Transform.scale(
                                    scaleY: -1,
                                    child: _blurredGoldGift(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-0.5, 0),
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap:
                                () => giftBloc.add(GiftBlocEvent.activeGift()),
                            child: const GiftBoxAnimation(size: 330),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: padding.top + 113,
                left: 32,
                right: 32,
                child: Text(
                  context.localization.gift_page_title,
                  textAlign: TextAlign.center,
                ).h1(color: appColors.static.white),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: padding.bottom + 94,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      context.localization.gift_page_subtitle,
                      textAlign: TextAlign.center,
                    ).labelMd(
                      color: appColors.static.white.withValues(alpha: 0.4),
                    ),
                    const SizedBox(height: 10),
                    Assets.svg.giftArrowDown.path.toSvgImage(
                      width: 23.094,
                      height: 72,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: padding.top + 2,
                right: 16,
                child: RoundedButton(
                  assetsSvgIcon: Assets.svg.iconClose.path,
                  hideShadow: true,
                  backgroundColor: appColors.static.white.withValues(
                    alpha: 0.16,
                  ),
                  iconColor: appColors.static.white,
                  onPressed: () => context.pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _blurredGoldGift() {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Assets.png.giftBoxGold.image(width: 186.498, height: 186.498),
    );
  }
}
