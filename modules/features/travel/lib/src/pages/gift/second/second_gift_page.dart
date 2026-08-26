import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import '../../../di/injection.dart';

class SecondGiftPage extends StatefulWidget {
  final int timeLeft;
  final int timeStatus;

  const SecondGiftPage({super.key, this.timeLeft = 0, this.timeStatus = 0});

  @override
  State<SecondGiftPage> createState() => _SecondGiftPageState();
}

class _SecondGiftPageState extends State<SecondGiftPage> {
  final storage = getIt<SecurityStorage>();
  bool isUtcClient = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isUtcClient = storage.getUserModel()?.isUtcClient ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return !isUtcClient
        ? Scaffold(
          extendBody: true,
          body: Stack(
            children: [
              Positioned(
                top: padding.top + 2,
                right: 16,
                child: RoundedButton.closeButton(
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              Positioned(
                top: padding.top + kToolbarHeight,
                left: 16,
                right: 16,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(context.localization.claim_warning_page_title).h1(),
                    Text(
                      context.localization.claim_warning_page_caption,
                    ).bodyLg(color: context.appColors.textIconColor.secondary),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [Assets.svg.giftMask.svg()],
                ),
              ),
            ],
          ),
        )
        : Scaffold(
          extendBody: true,
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ).copyWith(bottom: padding.bottom + 4),

            child: AppActionButton(
              actionText: context.localization.gift_history,
              onPressed: () {
                context.pushNamed(AppNavPath.travel.travelHomeGiftHistory.name);
              },
              containerColor: context.appColors.static.white,
              contentColor: context.appColors.brand,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),

            child: Stack(
              children: [
                Positioned(
                  top: padding.top + kToolbarHeight,
                  right: 0,
                  left: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(
                        builder: (context) {
                          final text = switch (widget.timeStatus) {
                            0 => context.localization
                                .gift_second_page_title_minute(widget.timeLeft),
                            1 => context.localization
                                .gift_second_page_title_hour(widget.timeLeft),
                            _ => context.localization
                                .gift_second_page_title_day(widget.timeLeft),
                          };
                          return Text(text).h1();
                        },
                      ),
                      SizedBox(height: 8),
                      Text(
                        context.localization.gift_second_page_subtitle,
                      ).labelLg(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Assets.png.imageGift2.image(width: 275),
                ),
                Positioned(
                  right: 0,
                  top: padding.top + 4,
                  child: RoundedButton.closeButton(
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
