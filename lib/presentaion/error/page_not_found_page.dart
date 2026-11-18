import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

class PageNotFoundPage extends StatelessWidget {
  const PageNotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = context.localizations!;
    final canPop = context.canPop();

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        centerTitle: true,
        automaticallyImplyLeading: canPop,
        gradientColor: context.appColors.background.underlayer,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32,
            children: [
              MessageContainer.custom(
                icon: Assets.png.exclamationmarkSquare.image(),
                title: localizations.page_not_found_title,
                caption: localizations.page_not_found_message,
              ),
              Column(
                spacing: 12,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: AppActionButton(
                      actionText: localizations.page_not_found_go_home,
                      sizeType: ActionButtonSizeType.large,
                      onPressed: () => context.travel.goMain(),
                    ),
                  ),
                  if (canPop)
                    SizedBox(
                      width: double.maxFinite,
                      child: AppActionButton(
                        actionText: localizations.nav_back,
                        type: ActionButtonType.secondary,
                        sizeType: ActionButtonSizeType.large,
                        onPressed: context.pop,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
