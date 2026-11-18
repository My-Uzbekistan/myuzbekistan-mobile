import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';
import 'package:travel/src/pages/gift/bloc/gift_bloc.dart';
import 'package:travel/src/pages/gift/gift_unavailable_reason.dart';
import 'package:travel/src/pages/gift/widget/gift_progressive_blur.dart';

class SecondGiftPage extends StatelessWidget {
  const SecondGiftPage({
    super.key,
    this.timeLeft = 0,
    this.timeStatus = TimeStatus.minutes,
  });

  final int timeLeft;
  final TimeStatus timeStatus;

  @override
  Widget build(BuildContext context) {
    final isUtcClient = getIt<SecurityStorage>().getUserModel()?.isUtcClient;
    return isUtcClient == true
        ? _WaitingView(timeLeft: timeLeft, timeStatus: timeStatus)
        : const _UztelecomOnlyView();
  }
}

class _WaitingView extends HookWidget {
  const _WaitingView({required this.timeLeft, required this.timeStatus});

  final int timeLeft;
  final TimeStatus timeStatus;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    final appColors = context.appColors;

    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    );
    useEffect(() {
      controller.forward();
      return null;
    }, const []);

    final timeline = useMemoized(() => _WaitingTimeline(controller), [
      controller,
    ]);

    final title = switch (timeStatus) {
      TimeStatus.minutes => context.localization.gift_second_page_title_minute(
        timeLeft,
      ),
      TimeStatus.hours => context.localization.gift_second_page_title_hour(
        timeLeft,
      ),
      TimeStatus.days => context.localization.gift_second_page_title_day(
        timeLeft,
      ),
    };

    return Scaffold(
      extendBody: true,
      backgroundColor: appColors.static.black,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ).copyWith(bottom: padding.bottom + 8),
        child: FadeTransition(
          opacity: timeline.glowOpacity,
          child: AppActionButton(
            actionText: context.localization.gift_history,
            sizeType: ActionButtonSizeType.large,
            onPressed: () => context.travel.pushGiftHistory(),
            containerColor: appColors.static.white,
            contentColor: appColors.brandSeaBlue,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: size.height * 780 / 812,
            child: FadeTransition(
              opacity: timeline.glowOpacity,
              child: Assets.png.giftGlowWait.image(fit: BoxFit.fill),
            ),
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
                child: Transform.translate(
                  offset: const Offset(94.71, 25.21),
                  child: FadeTransition(
                    opacity: timeline.giftOpacity,
                    child: AnimatedBuilder(
                      animation: timeline.giftShift,
                      builder:
                          (context, child) => Transform.translate(
                            offset:
                                Offset.lerp(
                                  const Offset(200, 200),
                                  Offset.zero,
                                  timeline.giftShift.value,
                                )!,
                            child: child,
                          ),
                      child: Transform.rotate(
                        angle: -15 * pi / 180,
                        child: SizedBox(
                          width: 462.474,
                          height: 462.474,
                          child: GiftProgressiveBlur(
                            child: Assets.png.giftBoxGreen.image(
                              width: 462.474,
                              height: 462.474,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: padding.top + 88,
            left: 16,
            width: 253,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                _SlideInText(
                  opacity: timeline.titleOpacity,
                  shift: timeline.titleShift,
                  child: Text(title).h1(color: appColors.static.white),
                ),
                _SlideInText(
                  opacity: timeline.titleOpacity,
                  shift: timeline.captionShift,
                  maxOpacity: 0.6,
                  child: Text(
                    context.localization.gift_second_page_subtitle,
                  ).bodyLg(color: appColors.static.white),
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
              backgroundColor: appColors.static.white.withValues(alpha: 0.16),
              iconColor: appColors.static.white,
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
    );
  }
}

class _SlideInText extends StatelessWidget {
  const _SlideInText({
    required this.opacity,
    required this.shift,
    required this.child,
    this.maxOpacity = 1,
  });

  final Animation<double> opacity;
  final Animation<double> shift;
  final Widget child;
  final double maxOpacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([opacity, shift]),
      builder:
          (context, child) => Opacity(
            opacity: opacity.value * maxOpacity,
            child: Transform.translate(
              offset: Offset(-200 * (1 - shift.value), 0),
              child: child,
            ),
          ),
      child: child,
    );
  }
}

class _UztelecomOnlyView extends HookWidget {
  const _UztelecomOnlyView();

  @override
  Widget build(BuildContext context) {
    final giftBloc = context.read<GiftBloc>();
    useEffect(() {
      giftBloc.add(GiftBlocEvent.loadGiftHistory());
      return null;
    }, const []);

    return BlocBuilder<GiftBloc, GiftBlocState>(
      builder:
          (context, state) => _EmptyStateBody(
            reason:
                state.activeStatusCode == 404
                    ? GiftUnavailableReason.noPlan
                    : GiftUnavailableReason.notSubscriber,
            showHint: state.items.isEmpty,
          ),
    );
  }
}

class _EmptyStateBody extends StatelessWidget {
  const _EmptyStateBody({required this.reason, required this.showHint});

  final GiftUnavailableReason reason;
  final bool showHint;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final padding = MediaQuery.paddingOf(context);
    final appColors = context.appColors;
    final withAvatar = reason == GiftUnavailableReason.notSubscriber;
    double top(double designTop) => size.height * designTop / 812;

    final blobTop = withAvatar ? 408.0 : 360.0;
    final giftTop = withAvatar ? 365.0 : 317.0;

    return Scaffold(
      backgroundColor: appColors.background.base,
      body: Stack(
        children: [
          Positioned(
            left: size.width / 2 - 8 - 393 / 2,
            top: top(blobTop),
            width: 393,
            height: 249,
            child: Assets.svg.giftEmptyBlobLg.path.toSvgImage(
              fit: BoxFit.fill,
              tintColor: appColors.fill.quaternary,
            ),
          ),
          Positioned(
            left: size.width / 2 - 8 - 267 / 2,
            top: top(blobTop + 40),
            width: 267,
            height: 169,
            child: Assets.svg.giftEmptyBlobSm.path.toSvgImage(
              fit: BoxFit.fill,
              tintColor: appColors.fill.quaternary,
            ),
          ),
          Positioned(
            left: size.width / 2 - 0.5 - 252 / 2,
            top: top(giftTop),
            width: 252,
            height: 252,
            child:
                withAvatar
                    ? Assets.png.giftOpenEmpty.image()
                    : Assets.png.giftOpenUztelecom.image(),
          ),
          Positioned(
            left: 16,
            top: padding.top + (withAvatar ? 60 : 72),
            width: 343,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: withAvatar ? 16 : 8,
              children: [
                if (withAvatar)
                  ClipOval(
                    child: Assets.png.uztelecomLogo.image(
                      width: 56,
                      height: 56,
                    ),
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(context.localization.claim_warning_page_title).h1(),
                    Text(
                      context.localization.claim_warning_page_caption,
                    ).bodyLg(color: appColors.textIconColor.secondary),
                  ],
                ),
              ],
            ),
          ),
          if (showHint)
            Positioned(
              left: 0,
              right: 0,
              bottom: padding.bottom + 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 6,
                children: [
                  Assets.svg.infoCircleLine.path.toSvgImage(
                    width: 24,
                    height: 24,
                    tintColor: appColors.textIconColor.tertiary,
                  ),
                  Text(
                    context.localization.gift_empty_hint,
                  ).labelLg(color: appColors.textIconColor.tertiary),
                ],
              ),
            ),
          Positioned(
            top: padding.top + 2,
            right: 16,
            child: RoundedButton.closeButton(onPressed: () => context.pop()),
          ),
        ],
      ),
    );
  }
}

class _WaitingTimeline {
  _WaitingTimeline(AnimationController controller)
    : glowOpacity = CurvedAnimation(parent: controller, curve: _decelerate),
      titleOpacity = CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.55, curve: _decelerate),
      ),
      titleShift = CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.5, curve: _decelerate),
      ),
      captionShift = CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 0.65, curve: _decelerate),
      ),
      giftOpacity = CurvedAnimation(
        parent: controller,
        curve: const Interval(0.125, 0.625, curve: _decelerate),
      ),
      giftShift = CurvedAnimation(
        parent: controller,
        curve: const Interval(0.1, 0.75, curve: _overshoot),
      );

  final Animation<double> glowOpacity;
  final Animation<double> titleOpacity;
  final Animation<double> titleShift;
  final Animation<double> captionShift;
  final Animation<double> giftOpacity;
  final Animation<double> giftShift;
}

const _decelerate = Cubic(0.05, 0.7, 0.1, 1);
const _overshoot = Cubic(0.34, 1.06, 0.64, 1);
