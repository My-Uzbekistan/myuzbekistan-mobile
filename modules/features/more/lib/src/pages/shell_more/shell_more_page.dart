import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/profile_page/pages/change_locale.dart';
import 'package:more/src/pages/shell_more/widgets/about_widget.dart';
import 'package:more/src/pages/shell_more/widgets/version.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../../di/injection.dart';
import '../profile_page/bloc/profile_bloc.dart';
import 'bloc/more_bloc.dart';

class ShellMorePage extends StatefulWidget {
  const ShellMorePage({super.key});

  @override
  State<ShellMorePage> createState() => _ShellMorePageState();
}

class _ShellMorePageState extends State<ShellMorePage> {
  late final MoreBloc moreBloc;
  late final AppSettingsBloc appSettingsBloc;

  @override
  void initState() {
    moreBloc = getIt<MoreBloc>();
    appSettingsBloc = context.read<AppSettingsBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => moreBloc,
      child: BlocBuilder<ProfileBloc, ProfileBlocState>(
        builder: (context, profileState) {
          return Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              centerTitle: false,
              flexibleSpace: AppGradientMask(),
              backgroundColor: Colors.transparent,

              title: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  if (profileState is ProfileBlocDataState)
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: ExtendedImage.network(
                          profileState.userModel?.photoUrl ?? "",
                          fit: BoxFit.cover,

                          cache: true,
                          cacheMaxAge: Duration(days: 10),
                          loadStateChanged: (state) {
                            switch (state.extendedImageLoadState) {
                              case LoadState.completed:
                                return state.completedWidget;
                              default:
                                return Assets.pngAvatar.toImage(
                                  fit: BoxFit.cover,
                                );
                            }
                          },
                        ),
                      ),
                    ),
                  Flexible(
                    child: Text(
                      (profileState is ProfileBlocDataState)
                          ? profileState.userModel?.name ?? ""
                          : context.localization.guest,
                      style: CustomTypography.H3,
                    ),
                  ),
                ],
              ),

              actionsPadding: EdgeInsets.only(right: 16),
              actions: [
                Builder(
                  builder: (context) {
                    if (profileState is ProfileBlocDataState) {
                      return SizedBox.shrink();
                    }
                    return GestureDetector(
                      onTap: () {
                        context.more.pushAuthPage();
                        // getIt<AppStatusChangeListeners>().refresh();

                        // GlobalHandler().refreshListener?.call();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 7,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: context.appColors.brand,
                        ),
                        child: Text(
                          context.localization.log_in,
                        ).labelSm(color: Colors.white),
                      ),
                    );
                  },
                ),
              ],
            ),
            body: BlocBuilder<MoreBloc, MoreState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 16,
                    bottom: MediaQuery.of(context).padding.bottom + 16,
                  ),
                  child: Column(
                    spacing: 24,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) {
                          if (state.isLoading) {
                            return Shimmer.fromDefault(
                              child: ShimmerDefaultContainer(
                                height: 322,
                                width: 311,
                              ),
                            );
                          }
                          return AboutWidget(avatars: state.abouts);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          spacing: 16,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: context.appColors.fill.quaternary,
                              ),
                              child: Column(
                                children: [
                                  // _MoreCellItem(
                                  //   icon: Assets.moreBell.toSvgImage(),
                                  //   title: context.localization.notification,
                                  //   trailing: AppSwitch(onChanged: (value) {}),
                                  // ),

                                  //TODO Pincode and biometric
                                  if (profileState is ProfileBlocDataState) ...[
                                    _MoreCellItem(
                                      icon: Assets.moreCirclePlus.toSvgImage(),
                                      title:
                                          profileState.hasPin
                                              ? context
                                                  .localization
                                                  .changePinTitle
                                              : context.localization.pin_code,
                                      onTap: () {
                                        if (profileState.hasPin) {
                                          context.more.pushChangePinCodePage();
                                        } else {
                                          context.more.pushCreatePinCodePage();
                                        }
                                      },
                                    ),
                                  ],
                                  _MoreCellItem(
                                    icon: Assets.moreGlobe.toSvgImage(),
                                    title: context.localization.language,
                                    onTap: () {
                                      context.more.pushChangeLanguagePage();
                                    },
                                    trailing: TrailingIcon(
                                      icon:
                                          appSettingsBloc.state.appLocale?.flag
                                              .toSvgImage(
                                                fit: BoxFit.contain,
                                              ) ??
                                          SizedBox(),
                                    ),
                                  ),
                                  _MoreCellItem(
                                    icon: Assets.morePalette.toSvgImage(),
                                    title: context.localization.theme,
                                    onTap: () {
                                      context.more.pushChangeThemePage();
                                    },
                                    trailing: TrailingText(
                                      text: context.localization.themeModes(
                                        appSettingsBloc.state.mode.name,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: context.appColors.fill.quaternary,
                              ),
                              child: Column(
                                children: [
                                  _MoreCellItem(
                                    icon: Assets.moreMoon.toSvgImage(),
                                    title:
                                        context.localization.prayer_time_widget,
                                    trailing: AppSwitch(
                                      isSwitched: state.prayerWidgetChecked,
                                      onChanged: (value) {
                                        moreBloc.add(
                                          MoreEvent.checkedPrayerWidget(),
                                        );
                                      },
                                    ),

                                    onTap: () {},
                                  ),
                                  Builder(
                                    builder: (context) {
                                      if (state.isLoading) {
                                        return Shimmer.fromDefault(
                                          child: ShimmerDefaultContainer(
                                            width: double.maxFinite,
                                            height: 100,
                                          ),
                                        );
                                      }
                                      return Column(
                                        children:
                                            state.useFull
                                                .map(
                                                  (e) => _MoreCellItem(
                                                    onTap: () {
                                                      final actionUrl =
                                                          e.actionUrl ?? "";
                                                      if (actionUrl
                                                          .isNotEmpty) {
                                                        if (actionUrl
                                                                .startsWith(
                                                                  "http://",
                                                                ) ||
                                                            actionUrl
                                                                .startsWith(
                                                                  "https://",
                                                                )) {
                                                          context.more
                                                              .pushWebViewPage(
                                                                title: e.title,
                                                                actionUrl:
                                                                    actionUrl,
                                                              );
                                                        } else {
                                                          context.push(
                                                            actionUrl,
                                                          );
                                                        }
                                                      }
                                                    },
                                                    icon: ExtendedImage.network(
                                                      e.photo ?? "",
                                                      loadStateChanged: (
                                                        ExtendedImageState
                                                        state,
                                                      ) {
                                                        switch (state
                                                            .extendedImageLoadState) {
                                                          case LoadState
                                                              .completed:
                                                            return state
                                                                .completedWidget;
                                                          default:
                                                            return SizedBox();
                                                        }
                                                      },
                                                    ),
                                                    title: e.title.toString(),
                                                  ),
                                                )
                                                .toList(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: context.appColors.fill.quaternary,
                              ),

                              child: Column(
                                children: [
                                  _MoreCellItem(
                                    icon: Assets.moreCircleInfo.toSvgImage(),
                                    title: context.localization.about_app,
                                    onTap: () {
                                      context.pushNamed(
                                        AppNavPath.more.aboutApp.name,
                                      );
                                    },
                                  ),

                                  // _MoreCellItem(
                                  //   icon: Assets.morePaperPlane.toSvgImage(),
                                  //   title: "Связаться с нами",
                                  // ),
                                  if (profileState is ProfileBlocDataState) ...[
                                    _MoreCellItem(
                                      icon: Assets.moreBroomMotion.toSvgImage(),
                                      title: context.localization.deleteAccount,
                                      onTap: () {
                                        showActionAlertDialog(
                                          context,

                                          title:
                                              context
                                                  .localization
                                                  .delete_account_confirm_title,
                                          message:
                                              context
                                                  .localization
                                                  .deleteAccountConfirmation,
                                          firstActionText:
                                              context.localization.delete,
                                          firstButtonTextColor:
                                              context.appColors.colors.red,
                                          secondActionText:
                                              context.localization.cancel,
                                          onFirstButtonClick: () {
                                            context.read<ProfileBloc>().add(
                                              ProfileBlocEvent.deleteAccount(),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    _MoreCellItem(
                                      icon:
                                          Assets.moreArrowRightToSquare
                                              .toSvgImage(),
                                      title: context.localization.logout,
                                      contentColor:
                                          context.appColors.colors.red,
                                      onTap: () {
                                        showActionAlertDialog(
                                          context,
                                          title:
                                              context
                                                  .localization
                                                  .logout_confirm_title,
                                          message:
                                              context
                                                  .localization
                                                  .logoutConfirmation,
                                          firstActionText:
                                              context.localization.exit,
                                          firstButtonTextColor:
                                              context.appColors.colors.red,
                                          secondActionText:
                                              context.localization.cancel,
                                          onFirstButtonClick: () async {
                                            context.read<ProfileBloc>().add(
                                              ProfileBlocEvent.logOut(),
                                            );
                                            // context.travel.goMain();
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            Version(),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class TrailingText extends StatelessWidget {
  final String text;

  const TrailingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Text(text).bodyLg(color: context.appColors.textIconColor.secondary),
        SizedBox(
          height: 20,
          width: 20,
          child: Assets.svgIconArrowRight.toSvgImage(
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              context.appColors.textIconColor.secondary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}

class TrailingIcon extends StatelessWidget {
  final Widget icon;

  const TrailingIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        spacing: 8,
        children: [
          icon,
          SizedBox(
            height: 20,
            width: 20,
            child: Assets.svgIconArrowRight.toSvgImage(
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                context.appColors.textIconColor.secondary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoreCellItem extends StatelessWidget {
  final Widget icon;
  final Widget? trailing;
  final String title;

  final Color? contentColor;
  final GestureTapCallback? onTap;

  const _MoreCellItem({
    super.key,
    required this.icon,
    required this.title,
    this.trailing,
    this.contentColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        height: 64,
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 16,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  contentColor ?? context.appColors.brand,
                  BlendMode.srcIn,
                ),
                child: icon,
              ),
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: contentColor),
            ),
            trailing ??
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Assets.svgIconArrowRight.toSvgImage(
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.mode(
                      context.appColors.textIconColor.secondary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
