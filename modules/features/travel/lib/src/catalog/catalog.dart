import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/catalog/bloc/catalog_bloc.dart';
import 'package:travel/src/catalog/widget/catalog_item.dart';
import 'package:travel/src/core/extension.dart';

import '../di/injection.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final SecurityStorage securityStorage = getIt<SecurityStorage>();

  CatalogBloc? _bloc;

  @override
  void initState() {
    _bloc = context.read<CatalogBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // catalogItems = [
    //   CatalogItemModel(
    //     title: context.localization.catalogMyEsim,
    //     svgAssets: Assets.catalogAntena,
    //     type: CatalogItemType.esim,
    //     status: CatalogStatus.active,
    //     color: Color(0xff04A5FE),
    //   ),
    //   CatalogItemModel(
    //     title: "Travel Cam AI",
    //     svgAssets: Assets.catalogIconCameraAi,
    //     type: CatalogItemType.cameraAi,
    //     status: CatalogStatus.active,
    //     color: Color(0xff37A8C7),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogTravelQuiz,
    //     svgAssets: Assets.catalogDice,
    //     type: CatalogItemType.quiz,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xff14CB7D),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogAviaTickets,
    //     svgAssets: Assets.catalogAirplane,
    //     type: CatalogItemType.airplane,
    //     status: CatalogStatus.active,
    //     color: Color(0xffff8500),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogChargers,
    //     svgAssets: Assets.catalogEv,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xff0db006),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogPoster,
    //     svgAssets: Assets.catalogEvents,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xffff582a),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogTrainTickets,
    //     svgAssets: Assets.catalogMetro,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xff8317c5),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogHotels,
    //     svgAssets: Assets.catalogHotels,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xff0077FE),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogCottages,
    //     svgAssets: Assets.catalogCountryHouse,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xff818c99),
    //   ),
    //   CatalogItemModel(
    //     title: context.localization.catalogInsurance,
    //     svgAssets: Assets.catalogInsurance,
    //     type: CatalogItemType.charger,
    //     status: CatalogStatus.inProgress,
    //     color: Color(0xffffc107),
    //   ),
    // ];
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
                  largeTitle: Text(context.localization.nav_services),
                  border: null,
                  stretch: true,
                  brightness: context.brightness,
                  backgroundColor: Colors.transparent,
                  enableBackgroundFilterBlur: false,
                  trailing: Row(mainAxisSize: MainAxisSize.min),
                ),
              ],
            ),
            BlocBuilder<CatalogBloc, CatalogState>(
              builder: (context, state) {
               return SliverAnimatedSwitcher(duration: Duration(milliseconds: 300), child: state.when(
                 loading: () {
                   return SliverToBoxAdapter(
                     child: Shimmer.fromDefault(
                       child: Padding(
                         padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
                           top: 8,
                           bottom: MediaQuery.of(context).padding.bottom,
                         ),
                         child: GridView.builder(
                           shrinkWrap: true,
                           padding: EdgeInsets.zero,
                           physics: NeverScrollableScrollPhysics(),
                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  crossAxisCount: 2,
                             mainAxisSpacing: 16,
                             crossAxisSpacing: 16,
                             childAspectRatio: 163 / 104,),
                           itemBuilder: (context,index){
                             return  ShimmerDefaultContainer(height: 1);
                           },
                           itemCount: 6,



                         ),
                       ),
                     ),
                   );
                 },
                 loaded: (items) {
                   return SliverPadding(
                     padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
                       top: 8,
                       bottom: MediaQuery.of(context).padding.bottom,
                     ),
                     sliver: SliverGrid(
                       delegate: SliverChildBuilderDelegate((context, index) {
                         final item = items[index];
                         return CatalogItem(
                           item: item,

                           onTap: () {
                             if(item.status!=CatalogStatus.upcoming) {
                               if (item.action
                                   .orEmpty()
                                   .isNotEmpty) {
                                 pushAction(context, item: item);
                               }
                             }else {
                                   Fluttertoast.showToast(
                                     gravity: ToastGravity.BOTTOM,
                                     msg: context.localization.catalogItemStatusSoon,
                                     textColor:
                                     context.appColors.textIconColor.primary,
                                     backgroundColor:
                                     context.appColors.background.elevation2,
                                   );
                             }
                           },

                         );
                       }, childCount: items.length),
                       gridDelegate:
                       const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 2,
                         mainAxisSpacing: 16,
                         crossAxisSpacing: 16,
                         childAspectRatio: 163 / 104,
                       ),
                     ),
                   );
                 },
                 error: () {
                   return SliverFillRemaining(
                     hasScrollBody: false,
                     child: Padding(
                       key: ValueKey("CatalogDefaultState"),
                       padding: EdgeInsets.symmetric(horizontal: 16),
                       child: Transform.translate(
                         offset: Offset(0, -kToolbarHeight),
                         child: Center(
                           child: Column(
                             mainAxisSize: MainAxisSize.min,
                             spacing: 24,
                             children: [
                               MessageContainer.custom(
                                 icon:
                                 Assets.pngExclamationmarkSquare.toImage(),
                                 title: context.localization.pageFailedToLoad,
                                 caption:
                                 context.localization.something_went_wrong,
                               ),
                               SizedBox(
                                 width: double.maxFinite,
                                 height: 48,
                                 child: FilledButton(
                                   onPressed: () {
                                     _bloc?.add(CatalogEvent.fetch());
                                   },
                                   style: FilledButton.styleFrom(
                                     elevation: 0,
                                     textStyle: CustomTypography.bodyLg,
                                     backgroundColor:
                                     context.appColors.fill.quaternary,
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(16),
                                     ),
                                   ),
                                   child: Text(context.localization.refresh),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   );
                 },
               ));

              },
            ),

            // SliverFillRemaining(hasScrollBody: false,child: SizedBox(),)
            // SliverFillRemaining(
            //   hasScrollBody: false, // bo'sh joyni yopadi
            // ),
          ],
        ),
      ),
    );
  }

  void pushAction(BuildContext context, {required CatalogItemModel item}) {
    var uri = Uri.parse(item.action!);

    if (item.actionType == CatalogActionType.inner) {
      if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty) {
        context.push(uri.toString());
      } else {
        if (item.authRequired) {
          uri = uri.replace(
            queryParameters: {
              ...uri.queryParameters,
              "token": securityStorage.getAccessToken(),
              "theme": context.brightness.name,
            },
          );
        }
        debugPrint(uri.toString());
        context.more.pushWebViewPage(
          actionUrl: uri.toString(),
          authRequired: item.authRequired,
        );
      }
    } else {
      if (item.authRequired) {
        uri = uri.replace(
          queryParameters: {
            ...uri.queryParameters,
            "token": securityStorage.getAccessToken(),
          },
        );
      }
      LauncherUtils.urlLauncher(item.action!);
    }
  }
}

//
// try {
// final String? deeplink = message.data["deeplink"];
// if (deeplink != null && deeplink.isNotEmpty) {
// final uri = Uri.parse(deeplink);
// if (uri.host == "myuzb.uz" && uri.pathSegments.isNotEmpty) {
// appRootNavigatorKey.currentContext?.push(uri.toString());
// }
// }
// } catch (_) {}
