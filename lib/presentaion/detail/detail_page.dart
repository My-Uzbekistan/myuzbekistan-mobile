import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/presentaion/detail/detail_bloc/detail_bloc.dart';

import 'package:uzbekistan_travel/presentaion/detail/widget/work_time_widget.dart';

import 'widget/cells_widget.dart';
import 'widget/facilities_widget.dart';
import 'widget/location_widget.dart';
import 'widget/menu_group.dart';
import 'widget/top_widget.dart';

class DetailPage extends HookWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final iconTheme = Theme.of(context).iconTheme;
    return Scaffold(
      body:
          BlocConsumer<DetailBloc, DetailBlocState>(listener: (context, state) {
        if (state is DetailBlocDataState) {
          if (state.navState is Unauthorized) {
            context.pushAuthPage();
          }
        }
      }, buildWhen: (previous, current) {
        if (previous is DetailBlocDataState && current is DetailBlocDataState) {
          return previous.contentDetail != current.contentDetail;
        } else {
          return previous != current;
        }
      }, builder: (context, state) {
        return state.when(loadingState: () {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              alignment: Alignment.topCenter,
              child: CircularProgressIndicator(),
            ),
          );
        }, dataState: (detail, navState) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, didResult) {
              if (!didPop) {
                context.pop({"isFavorite": detail.isFavorite});
              }
            },
            child: CollapsableContainer(
              title: detail.title ?? "",
              backgroundImageUrl: detail.image,
              actions: (isCollapsed) {
                return [
                  IconButton(
                      onPressed: () {
                        context.read<DetailBloc>().add(
                            DetailBlocEvent.changeFavoriteState(
                                isSetFavorite: !detail.isFavorite));
                      },
                      icon: detail.isFavorite
                          ? Assets.svgIconFilledHeard.toSvgImage(
                              colorFilter: ColorFilter.mode(
                                  context.appColors.colors.red,
                                  BlendMode.srcIn))
                          : Assets.svgOutlineHeard.toSvgImage(
                              colorFilter: ColorFilter.mode(
                                  isCollapsed
                                      ? (iconTheme.color ?? Colors.white)
                                      : Colors.white,
                                  BlendMode.srcIn)))
                ];
              },
              expandedAppBarContent: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.categoryName ?? "",
                    style:
                        CustomTypography.bodyMd.copyWith(color: Colors.white),
                  ),
                  Text(
                    detail.title ?? "",
                    style: CustomTypography.H1.copyWith(color: Colors.white),
                  ),
                  if (detail.photos?.isNotEmpty == true)
                    GestureDetector(
                      onTap: () {
                        context.pushImagePreview(detail.photos ?? []);
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black.withValues(alpha: 0.64)),
                          child: Text(
                            context.localizations!
                                .nPhotos(detail.photos!.length),
                            style: CustomTypography.labelLg
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                ],
              ),
              content: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (detail.viewType == ViewType.places)
                      RatingTopWidget(
                        ratingAverage: detail.ratingAverage,
                        averageCheck: detail.averageCheck ?? 0,
                      ),
                    if (detail.viewType != ViewType.places)
                      TopBalanceWidget(
                        priceText: detail.priceText,
                        priceInDollar: detail.priceInDollar,
                      ),
                    if (detail.description.orEmpty().isNotEmpty)
                      Padding(
                        padding: EdgeInsets.only(top: 24, bottom: 16),
                        child: Text(
                          "${detail.description}",
                          style: CustomTypography.bodyLg.copyWith(
                              color: context.appColors.textIconColor.primary),
                        ),
                      ),
                    if (detail.files != null && detail.files?.value != [])
                      FilesGroup(),
                    if (detail.facilitiesAvailable)
                      FacilitiesWidget(
                        title: detail.facilities?.name ?? "",
                        facilities: detail.facilities?.value ?? [],
                      ),
                    if (detail.languagesAvailable)
                      LanguagesWidget(
                          title: detail.languages!.name ?? "",
                          languages: detail.languages!.value ?? []),
                    if (detail.workingHoursAvailable)
                      WorkTimeWidget(
                        title: detail.workingHours?.name,
                        workingHours: detail.workingHours?.value,
                      ),
                    if (detail.address != null || detail.location != null)
                      LocationWidget(
                        title: detail.location?.name ?? "",
                        address: detail.address,
                        coordinates: detail.location?.value ?? [],
                      ),
                    if (detail.contactAvailable)
                      CellsWidget(
                        title: detail.contacts?.name ?? "",
                        contacts: detail.contacts?.value ?? [],
                      ),
                  ],
                ),
              ),
            ),
          );
        });
      }),
    );
  }
}
