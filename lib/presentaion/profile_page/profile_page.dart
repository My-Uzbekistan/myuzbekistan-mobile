import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/core/settings_bloc/app_settings_bloc.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/bloc/profile_bloc.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/widgets/cell.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<ProfileBloc, ProfileBlocState>(
          listener: (previous, current) {
        if (current is ProfileBlocGuestState) {
          context.goMain();
        }
      }, builder: (context, profileState) {
        return BlocBuilder<AppSettingsBloc, AppSettingsBlocState>(
            builder: (context, state) {
          return ListView(
            children: [
              Container(
                child: Center(
                  child: AppAvatar(
                    imageUrl: (profileState is ProfileBlocDataState)
                        ? profileState.userModel?.photoUrl
                        : "",
                    type: AvatarType.circle,
                    sizeType: AvatarSizeType.large,
                  ),
                ),
              ),
              profileState is ProfileBlocDataState
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          profileState.userModel?.name ?? "",
                          style: CustomTypography.H2,
                        ),
                      ),
                    )
                  : Center(
                      child: GestureDetector(
                        onTap: () {
                          context.pushAuthPage();
                          // context.goMain();
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: context.appColors.fill.quaternary),
                          child: Text(
                            context.localizations!.getStarted,
                            style: CustomTypography.labelMd,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 40,
              ),
              SettingsCell(
                text: context.localizations!.language,
                icon: Assets.svgLanguage.toSvgImage(
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(
                        context.appColors.textIconColor.primary,
                        BlendMode.srcIn)),
                onTap: () {
                  context.pushLangChangePage();
                },
              ),
              SettingsCell(
                text: context.localizations!.theme,
                onTap: () {
                  context.pushLangChangeTheme();
                },
                icon: Assets.svgIconTheme.toSvgImage(
                    width: 24,
                    height: 24,
                    colorFilter: ColorFilter.mode(
                        context.appColors.textIconColor.primary,
                        BlendMode.srcIn)),
              ),
              if (profileState is ProfileBlocDataState)
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16).copyWith(top: 24),
                  child: Column(
                    spacing: 8,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 48),
                            maximumSize: Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            backgroundColor: context.appColors.fill.quaternary,
                            elevation: 0,
                            foregroundColor:
                                context.appColors.textIconColor.primary,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          showAlertDialog(
                              content:
                                  context.localizations!.logoutConfirmation,
                              action: context.localizations!.logout,
                              onPressed: () {
                                context
                                    .read<ProfileBloc>()
                                    .add(ProfileBlocEvent.logOut());
                                context.goMain();
                              });
                        },
                        child: Text(context.localizations!.logout),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 48),
                            maximumSize: Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)),
                            backgroundColor: context.appColors.fill.quaternary,
                            elevation: 0,
                            foregroundColor:
                                context.appColors.textIconColor.primary,
                            shadowColor: Colors.transparent),
                        onPressed: () {
                          showAlertDialog(
                              content: context
                                  .localizations!.deleteAccountConfirmation,
                              action: context.localizations!.deleteAccount,
                              onPressed: () {
                                context
                                    .read<ProfileBloc>()
                                    .add(ProfileBlocEvent.deleteAccount());
                                context.goMain();
                              });
                        },
                        child: Text(context.localizations!.deleteAccount),
                      )
                    ],
                  ),
                )
            ],
          );
        });
      }),
    );
  }

  void showAlertDialog(
      {required String content,
      required String action,
      required VoidCallback onPressed}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              context.localizations!.warning,
              style: CustomTypography.bodyLg
                  .copyWith(color: context.appColors.textIconColor.primary),
            ),
            content: Text(content),
            actions: [
              TextButton(
                child: Text(
                  context.localizations!.cancel,
                  style: CustomTypography.bodyMd.copyWith(
                      color: context.appColors.textIconColor.secondary),
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // dialogni yopish
                },
              ),
              TextButton(
                child: Text(action),
                onPressed: () {
                  onPressed.call();
                },
              ),
            ],
          );
        });
  }
}
