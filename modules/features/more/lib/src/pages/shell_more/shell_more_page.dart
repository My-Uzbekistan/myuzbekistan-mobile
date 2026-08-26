import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/core/settings_bloc/app_settings_bloc.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

import '../../di/injection.dart';
import '../profile_page/bloc/profile_bloc.dart';
import 'bloc/more_bloc.dart';
import 'widgets/profile/premium_active_banner.dart';
import 'widgets/profile/premium_upgrade_banner.dart';
import 'widgets/profile/profile_header.dart';
import 'widgets/profile/profile_settings_cell.dart';

class ShellMorePage extends HookWidget {
  const ShellMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final moreBloc = useMemoized(() => getIt<MoreBloc>());
    useEffect(() => moreBloc.close, [moreBloc]);

    final appVersion = useState<String?>(null);
    useEffect(() {
      Future.microtask(() async {
        final info = await PackageInfo.fromPlatform();
        appVersion.value = info.version;
      });
      return null;
    }, const []);

    final completerRef = useRef<Completer<void>?>(null);

    final profileState = context.watch<ProfileBloc>().state;
    final appSettingsState = context.watch<AppSettingsBloc>().state;

    final userState =
        profileState is ProfileBlocDataState ? profileState : null;
    final isLoggedIn = userState != null;
    final localeName = appSettingsState.appLocale?.name;

    return Scaffold(
      extendBody: true,
      backgroundColor: context.appColors.background.underlayer,
      body: BlocListener<MoreBloc, MoreState>(
        bloc: moreBloc,
        listenWhen:
            (previous, current) =>
                current.errorMessage != null &&
                previous.errorMessage != current.errorMessage,
        listener: (context, moreState) {
          Toast.showToast(moreState.errorMessage!);
        },
        child: BlocConsumer<MoreBloc, MoreState>(
          bloc: moreBloc,
          listenWhen:
              (previous, current) => previous.isLoading != current.isLoading,
          listener: (context, moreState) {
            if (!moreState.isLoading) {
              completerRef.value?.complete();
              completerRef.value = null;
            }
          },
          builder: (context, moreState) {
            final isPremium =
                moreState.premiumLoaded &&
                (moreState.premiumStatus?.isPremium ?? false);
            final showPremiumBanner = !isLoggedIn || moreState.premiumLoaded;

            return RefreshIndicator.adaptive(
              displacement: 100,
              triggerMode: RefreshIndicatorTriggerMode.anywhere,
              onRefresh: () async {
                moreBloc.add(MoreEvent.fetch());
                context.read<ProfileBloc>().add(ProfileBlocEvent.loadEvent());
                completerRef.value = Completer();
                await completerRef.value?.future;
              },
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                slivers: [
                  SliverStack(
                    children: [
                      SliverAppBar(
                        primary: false,
                        stretch: true,
                        toolbarHeight: 0,
                        elevation: 0,
                        scrolledUnderElevation: 0,
                        automaticallyImplyLeading: false,
                        backgroundColor: Colors.transparent,
                        systemOverlayStyle: context.systemUiOverlyStyle,
                        expandedHeight: ProfileHeader.heightOf(
                          context,
                          isGuest: !isLoggedIn,
                          isPremium: isPremium,
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.pin,
                          stretchModes: const [StretchMode.zoomBackground],
                          background: ProfileHeader(
                            isGuest: !isLoggedIn,
                            name: userState?.userModel?.userName ?? "",
                            photoUrl: userState?.userModel?.photoUrl,
                            isLoading: userState?.isLoading ?? false,
                            isPremium: isPremium,
                          ),
                        ),
                      ),
                      SliverPinnedHeader(
                        child: SizedBox(
                          height: MediaQuery.of(context).padding.top,
                          child: const AppGradientMask(),
                        ),
                      ),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Column(
                        spacing: 16,
                        children: [
                          if (showPremiumBanner)
                            isPremium
                                ? PremiumActiveBanner(
                                  onTap:
                                      () => context.pushType(
                                        AppNavPath.travel.premiumCancelPage,
                                        extra: moreState.premiumStatus,
                                      ),
                                )
                                : const PremiumUpgradeBanner(),

                          _settingsGroup(
                            context,
                            children: [
                              if (userState != null)
                                ProfileSettingsCell(
                                  icon: Assets.svg.more.fingerprint.svg(),
                                  title: context.localization.security,
                                  onTap: () => context.more.pushSecurityPage(),
                                ),
                              ProfileSettingsCell(
                                icon: Assets.svg.more.bell.svg(),
                                title: context.localization.notification,
                                trailing: AppSwitch(
                                  isSwitched: moreState.notificationsEnabled,
                                  onChanged: (_) {
                                    moreBloc.add(
                                      MoreEvent.checkedNotification(),
                                    );
                                  },
                                ),
                              ),
                              ProfileSettingsCell(
                                icon: Assets.svg.more.globe.svg(),
                                title: context.localization.language,
                                trailingText:
                                    localeName == null
                                        ? null
                                        : context.localization.lanItem(
                                          localeName,
                                        ),
                                onTap:
                                    () => context.more.pushChangeLanguagePage(),
                              ),
                              ProfileSettingsCell(
                                icon: Assets.svg.more.palette.svg(),
                                title: context.localization.theme,
                                trailingText: context.localization.themeModes(
                                  appSettingsState.mode.name,
                                ),
                                onTap: () => context.more.pushChangeThemePage(),
                              ),
                            ],
                          ),

                          _settingsGroup(
                            context,
                            children: [
                              ProfileSettingsCell(
                                icon: Assets.svg.more.moon.svg(),
                                title: context.localization.prayer_time_widget,
                                trailing: AppSwitch(
                                  isSwitched: moreState.prayerWidgetChecked,
                                  onChanged: (_) {
                                    moreBloc.add(
                                      MoreEvent.checkedPrayerWidget(),
                                    );
                                  },
                                ),
                              ),
                              ...moreState.useFull.map(
                                (e) => ProfileSettingsCell(
                                  icon: AppNetworkImage(e.photo ?? ""),
                                  title: e.title.toString(),
                                  onTap: () {
                                    final actionUrl = e.actionUrl ?? "";
                                    if (actionUrl.isEmpty) return;
                                    if (actionUrl.startsWith("http://") ||
                                        actionUrl.startsWith("https://")) {
                                      context.more.pushWebViewPage(
                                        title: e.title,
                                        actionUrl: actionUrl,
                                      );
                                    } else {
                                      context.push(actionUrl);
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),

                          _settingsGroup(
                            context,
                            children: [
                              ProfileSettingsCell(
                                icon: Assets.svg.more.circleInfo.svg(),
                                title: context.localization.about_app,
                                onTap:
                                    () => context.pushNamed(
                                      AppNavPath.more.aboutApp.name,
                                    ),
                              ),
                              ProfileSettingsCell(
                                icon: Assets.svg.more.paperPlane.svg(),
                                title: context.localization.contactUs,
                                onTap:
                                    () =>
                                        context.more
                                            .pushEmergencyContactsPage(),
                              ),
                            ],
                          ),

                          if (userState != null)
                            _settingsGroup(
                              context,
                              children: [
                                ProfileSettingsCell(
                                  icon: Assets.svg.more.broomMotion.svg(),
                                  title: context.localization.deleteAccount,
                                  iconBackgroundColor:
                                      context.appColors.background.elevation3,
                                  onTap: () => _confirmDeleteAccount(context),
                                ),
                                ProfileSettingsCell(
                                  icon:
                                      Assets.svg.more.arrowRightToSquare.svg(),
                                  title: context.localization.logout,
                                  iconBackgroundColor:
                                      context.appColors.colors.red,
                                  contentColor: context.appColors.colors.red,
                                  showChevron: false,
                                  onTap: () => _confirmLogout(context),
                                ),
                              ],
                            ),

                          _versionInfo(context, appVersion.value),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 16,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _versionInfo(BuildContext context, String? version) {
    final color = context.appColors.textIconColor.tertiary;
    return Column(
      spacing: 4,
      children: [
        Text("MyUzbekistan").bodySm(color: color),
        Text(
          context.localization.version.plus(" ${version ?? ""}"),
        ).bodySm(color: color),
      ],
    );
  }

  void _confirmDeleteAccount(BuildContext context) {
    showActionAlertDialog(
      context,
      title: context.localization.delete_account_confirm_title,
      message: context.localization.deleteAccountConfirmation,
      firstActionText: context.localization.delete,
      firstButtonTextColor: context.appColors.colors.red,
      secondActionText: context.localization.cancel,
      onFirstButtonClick: () {
        context.read<ProfileBloc>().add(ProfileBlocEvent.deleteAccount());
      },
    );
  }

  void _confirmLogout(BuildContext context) {
    showActionAlertDialog(
      context,
      title: context.localization.logout_confirm_title,
      message: context.localization.logoutConfirmation,
      firstActionText: context.localization.exit,
      firstButtonTextColor: context.appColors.colors.red,
      secondActionText: context.localization.cancel,
      onFirstButtonClick: () {
        context.read<ProfileBloc>().add(ProfileBlocEvent.logOut());
      },
    );
  }

  Widget _settingsGroup(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: children),
    );
  }
}
