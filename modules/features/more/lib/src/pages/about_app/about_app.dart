import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/shell_more/widgets/version.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class AboutApp extends HookWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(title: context.localization.about_app),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
          top: MediaQuery
              .of(context)
              .padding
              .top + kToolbarHeight + 24,
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: context.appColors.stroke.nonOpaque),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: Assets.logoAppIcon.toImage(
                  height: 56,
                  width: 56,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text("MyUzbekistan").labelLg(),
            const SizedBox(height: 4),
         Version(),
            const SizedBox(height: 40),

            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.more.pushWebViewPage(
                    title: context.localization.privacy_policy,
                    actionUrl: "https://salomuzbekistan.uz/gallery/Privacy%20Policy-MyUzbekistan%20UZB-ENG-RUS.pdf");
              },
              child: SizedBox(
                height: 56,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(context.localization.privacy_policy)
                            .bodyLg(),
                      ),
                      Assets.svgIconArrowRight.toSvgImage(
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                        colorFilter: ColorFilter.mode(
                          context.appColors.textIconColor.secondary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.more.pushWebViewPage(
                    title: context.localization.privacy_policy,
                    actionUrl: "https://salomuzbekistan.uz/gallery/TRAVEL%20ASISSTANT-LITSENZIYA.pdf");
              },
              child: SizedBox(
                height: 56,
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(context.localization.licenses).bodyLg(),
                      ),
                      Assets.svgIconArrowRight.toSvgImage(
                        fit: BoxFit.contain,
                        height: 20,
                        width: 20,
                        colorFilter: ColorFilter.mode(
                          context.appColors.textIconColor.secondary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
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
