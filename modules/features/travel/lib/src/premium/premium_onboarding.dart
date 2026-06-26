import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/premium/bloc/premium_bloc.dart';

class PremiumOnboardingPage extends StatefulWidget {
  const PremiumOnboardingPage({super.key});

  @override
  State<PremiumOnboardingPage> createState() => _PremiumOnboardingPageState();
}

class _PremiumOnboardingPageState extends State<PremiumOnboardingPage> {
  PremiumBloc? bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PremiumBloc, PremiumState>(
      builder: (context, state) {
        return Scaffold(
          appBar: GradientAppBar(),
          bottomNavigationBar: Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom + 8,
              left: 16,
              right: 16,
            ),
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 16,
              children: [
                AppActionButton(
                  actionText: "Premiumni ulash",
                  onPressed: () {},
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Istagan vaqtda bekor qilish mumkin.",
                        style: CustomTypography.bodyXsm.copyWith(
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                      TextSpan(
                        text: "\nFoydalanish shartlari",
                        style: CustomTypography.bodyXsm.copyWith(
                          decoration: TextDecoration.underline,
                          color: context.appColors.textIconColor.secondary,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.png.iconPremium.image(height: 80),
                  Row(
                    spacing: 6,
                    children: [
                      Flexible(child: Text("MyUzbekistan").h1()),
                      Assets.png.iconPremiumText.image(height: 24),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Column(
                      spacing: 12,
                      children: [
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconInfinityLine,
                          title: "Cheksiz AI xizmatlar",
                          description:
                              "Caloria AI, Trip Planer, Travel Cam AI va barchasi",
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconCpuFill,
                          title: "eSIM promokod",
                          description: "Oltin raqam uchun chegirma",
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconDiscountPercentFill,
                          title: "Chegirmalar bo'limi",
                          description:
                              "Hamkor xizmatlardan eksklyuziv chegirmalar",
                        ),
                        PremiumItemCell(
                          asset: Assets.png.premiumCellIconImageCircleAiLine,
                          title: "Profil rasmi",
                          description: "Profilingizni shaxsiylashtiring",
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: Row(
                      spacing: 8,
                      children: [
                        DiscountItem(),
                        DiscountItem(),
                        DiscountItem(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class PremiumItemCell extends StatelessWidget {
  final AssetGenImage asset;
  final String title;
  final String description;

  const PremiumItemCell({
    super.key,
    required this.asset,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        asset.image(height: 32),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(title).labelLg(),
              Text(
                description,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ),
      ],
    );
  }
}

class DiscountItem extends StatelessWidget {
  const DiscountItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 98,
          width: 140,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.appColors.stroke.nonOpaque),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("12 oy").labelMd(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("49 999 so'm", maxLines: 1).labelLg(),
                  Text(
                    "71 988 so'm",
                    maxLines: 1,
                    style: CustomTypography.bodyXXsm.copyWith(
                      color: context.appColors.textIconColor.secondary,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -12,
          left: 9,

          child: Container(
            height: 20,
            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
            decoration: BoxDecoration(
              color: context.appColors.brandFlamingo,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text("chegirma -30%").labelSm(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
