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
                  child: ElevatedButton(
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
                      context
                          .read<ProfileBloc>()
                          .add(ProfileBlocEvent.logOut());
                      context.goMain();
                    },
                    child: Text(context.localizations!.logout),
                  ),
                )
            ],
          );
        });
      }),
    );
  }
}
