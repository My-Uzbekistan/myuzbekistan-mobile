import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/main.dart';

import '../../di/injection.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final SecurityStorage securityStorage = getIt<SecurityStorage>();
  List<CatalogItemModel> catalogItems = [];

  @override
  void initState() {
    // TODO: implement initState

    // catalogItems = [
    //   CatalogItemModel(
    //       title: "My esim",
    //       svgAssets: Assets.catalogAntena,
    //       type: CatalogItemType.esim,
    //       status: CatalogStatus.active,
    //       color: Color(0xff04A5FE)),
    //   CatalogItemModel(
    //       title: "Travel Quiz",
    //       svgAssets: Assets.catalogDice,
    //       type: CatalogItemType.quiz,
    //       status: CatalogStatus.inProgress,
    //       color: Color(0xff14CB7D)),
    //   CatalogItemModel(
    //       title: "Авиабилеты",
    //       svgAssets: Assets.catalogAirplane,
    //       type: CatalogItemType.airplane,
    //       status: CatalogStatus.inProgress,
    //       color: Color(0xffff8500)),
    //   CatalogItemModel(
    //       title: "Зарядки",
    //       svgAssets: Assets.catalogEv,
    //       type: CatalogItemType.charger,
    //       status: CatalogStatus.inProgress,
    //       color: Color(0xff0db006)),
    //   CatalogItemModel(
    //       title: "Афиша",
    //       svgAssets: Assets.catalogEvents,
    //       type: CatalogItemType.charger,
    //       status: CatalogStatus.inProgress,
    //       color: Color(0xff0db006)),
    // ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    catalogItems = [
      CatalogItemModel(
          title: context.localizations!.catalogMyEsim,
          svgAssets: Assets.catalogAntena,
          type: CatalogItemType.esim,
          status: CatalogStatus.active,
          color: Color(0xff04A5FE)),
      CatalogItemModel(
          title: "Travel Cam AI",
          svgAssets: Assets.catalogIconCameraAi,
          type: CatalogItemType.cameraAi,
          status: CatalogStatus.active,
          color: Color(0xff37A8C7)),
      CatalogItemModel(
          title: context.localizations!.catalogTravelQuiz,
          svgAssets: Assets.catalogDice,
          type: CatalogItemType.quiz,
          status: CatalogStatus.inProgress,
          color: Color(0xff14CB7D)),
      CatalogItemModel(
          title: context.localizations!.catalogAviaTickets,
          svgAssets: Assets.catalogAirplane,
          type: CatalogItemType.airplane,
          status: CatalogStatus.active,
          color: Color(0xffff8500)),
      CatalogItemModel(
          title: context.localizations!.catalogChargers,
          svgAssets: Assets.catalogEv,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xff0db006)),
      CatalogItemModel(
          title: context.localizations!.catalogPoster,
          svgAssets: Assets.catalogEvents,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xffff582a)),
      CatalogItemModel(
          title: context.localizations!.catalogTrainTickets,
          svgAssets: Assets.catalogMetro,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xff8317c5)),
      CatalogItemModel(
          title: context.localizations!.catalogHotels,
          svgAssets: Assets.catalogHotels,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xff0077FE)),
      CatalogItemModel(
          title: context.localizations!.catalogCottages,
          svgAssets: Assets.catalogCountryHouse,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xff818c99)),
      CatalogItemModel(
          title: context.localizations!.catalogInsurance,
          svgAssets: Assets.catalogInsurance,
          type: CatalogItemType.charger,
          status: CatalogStatus.inProgress,
          color: Color(0xffffc107)),
    ];
    return Scaffold(
        extendBody: true,
        body: CupertinoTheme(
          data: CupertinoThemeData(
            brightness: Brightness.light,
            textTheme: CupertinoTextThemeData(
              navLargeTitleTextStyle: CustomTypography.H1.copyWith(
                color: context.appColors.textIconColor.primary,
              ),
              navTitleTextStyle: CustomTypography.labelLg.copyWith(
                color: context.appColors.textIconColor.primary,
              ),
            ),
          ),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverStack(
                children: [
                  SliverPersistentHeader(
                    delegate: BlurHeaderDelegate(
                      kToolbarHeight + MediaQuery.of(context).padding.top,
                    ),
                    pinned: true,
                  ),
                  CupertinoSliverNavigationBar(
                    largeTitle: Text(context.localizations!.nav_services),
                    border: null,
                    stretch: true,
                    brightness: context.brightness,
                    backgroundColor: Colors.transparent,
                    enableBackgroundFilterBlur: false,
                    trailing: Row(mainAxisSize: MainAxisSize.min),
                  )
                ],
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
                    top: 8, bottom: MediaQuery.of(context).padding.bottom),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final item = catalogItems[index];
                    return CatalogItem(
                      item: item,
                      onTap: () {
                        if (item.type == CatalogItemType.cameraAi) {
                          context.more.pushWebViewPage(
                            title: "",
                            actionUrl:
                                "https://travel-cam-ai.vercel.app?lang=${currentLocale?.name}",
                          );
                        } else if (item.type == CatalogItemType.esim) {
                          context.more.pushWebViewPage(
                              title: "",
                              actionUrl:
                                  "https://esimapp.myuz.uz?token=${securityStorage.getAccessToken()}&theme=${context.brightness.name}&lang=${currentLocale?.name}",
                              authRequired: true);
                        } else if (item.type == CatalogItemType.airplane) {
                          context.more.pushWebViewPage(
                            title: "",
                            actionUrl: "https://avia.myuz.uz/",
                          );
                        } else {
                          Fluttertoast.showToast(
                              gravity: ToastGravity.BOTTOM,
                              msg: context.localizations!.catalogItemStatusSoon,
                              textColor:
                                  context.appColors.textIconColor.primary,
                              backgroundColor:
                                  context.appColors.background.elevation2);
                        }
                      },
                    );
                  }, childCount: catalogItems.length),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 163 / 104,
                  ),
                ),
              ),

              // SliverFillRemaining(hasScrollBody: false,child: SizedBox(),)
              // SliverFillRemaining(
              //   hasScrollBody: false, // bo'sh joyni yopadi
              // ),
            ],
          ),
        )
    );
  }
}

class CatalogItemModel {
  final String title;
  final String svgAssets;
  final CatalogItemType type;
  final CatalogStatus status;
  final Color color;

  CatalogItemModel(
      {required this.title,
      required this.svgAssets,
      required this.type,
      required this.color,
      this.status = CatalogStatus.active});
}

enum CatalogItemType { esim, cameraAi, quiz, airplane, charger }

enum CatalogStatus { active, inProgress }

class CatalogItem extends StatelessWidget {
  final CatalogItemModel item;
  final GestureTapCallback? onTap;

  const CatalogItem({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textColor = item.status == CatalogStatus.active
        ? Colors.white
        : context.appColors.textIconColor.secondary;
    final bgColor = item.status == CatalogStatus.active
        ? item.color
        : context.appColors.fill.quaternary;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: item.color),
                    child: item.svgAssets.toSvgImage(),
                  ),
                  Flexible(
                      child: Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).labelMd(color: textColor))
                ],
              ),
            ),
            Positioned(
              right: 12,
              top: 12,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(56),
                    color: item.status == CatalogStatus.active
                        ? Color(0xffFFD7F0)
                        : context.appColors.fill.tertiary),
                child: Text(
                  item.status == CatalogStatus.active
                      ? context.localizations!.catalogItemStatusNew
                      : context.localizations!.catalogItemStatusSoon,
                ).bodyXXsm(
                  color: item.status == CatalogStatus.active
                      ? Colors.black
                      : context.appColors.textIconColor.secondary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
