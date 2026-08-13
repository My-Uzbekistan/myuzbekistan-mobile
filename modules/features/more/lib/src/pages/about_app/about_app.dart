import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/about_app/widgets/about_link_row.dart';
import 'package:more/src/pages/shell_more/widgets/version.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class AboutApp extends HookWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColors.background.underlayer,
      appBar: GradientAppBar(
        title: localization.about_app,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery.of(context).padding.top + kToolbarHeight + 16,
          bottom: MediaQuery.of(context).padding.bottom + 16,
        ),
        child: Column(
          spacing: 16,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32),
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.appColors.stroke.nonOpaque,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Assets.logo.newAppIcon.image(fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text("MyUzbekistan").labelLg(),
                  const SizedBox(height: 4),
                  const Version(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  AboutLinkRow(
                    icon: Assets.svg.more.fileShield.svg(),
                    title: localization.privacy_policy,
                    onTap: () {
                      context.more.pushWebViewPage(
                        title: localization.privacy_policy,
                        actionUrl:
                            "https://salomuzbekistan.uz/gallery/Privacy%20Policy-MyUzbekistan%20UZB-ENG-RUS.pdf",
                      );
                    },
                  ),
                  AboutLinkRow(
                    icon: Assets.svg.more.fileChart.svg(),
                    title: localization.licenses,
                    onTap: () {
                      context.more.pushWebViewPage(
                        title: localization.privacy_policy,
                        actionUrl:
                            "https://salomuzbekistan.uz/gallery/TRAVEL%20ASISSTANT-LITSENZIYA.pdf",
                      );
                    },
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
