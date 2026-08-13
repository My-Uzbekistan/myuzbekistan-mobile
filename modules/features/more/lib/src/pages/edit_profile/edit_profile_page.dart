import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/edit_profile/widgets/avatar_action_button.dart';
import 'package:more/src/pages/edit_profile/widgets/profile_display_field.dart';
import 'package:more/src/pages/shell_more/widgets/change_avatar_sheet.dart';
import 'package:more/src/pages/shell_more/widgets/profile/profile_avatar_large.dart';
import 'package:shared/shared.dart';

import '../profile_page/bloc/profile_bloc.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColors.background.underlayer,
      appBar: GradientAppBar(title: localization.edit, centerTitle: true),
      body: BlocBuilder<ProfileBloc, ProfileBlocState>(
        builder: (context, state) {
          final user = state is ProfileBlocDataState ? state.userModel : null;
          final isLoading = state is ProfileBlocDataState && state.isLoading;
          final hasEmail = (user?.email ?? "").isNotEmpty;

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
              top: screenPadding.top + kToolbarHeight + 16,
              bottom: screenPadding.bottom + 16,
            ),
            child: Column(
              spacing: 24,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 24,
                  children: [
                    AvatarActionButton(
                      icon: Assets.svg.iconEditPen.svg(),
                      onTap: () => changeProfileAvatar(context),
                    ),
                    ProfileAvatarLarge(
                      photoUrl: user?.photoUrl,
                      isLoading: isLoading,
                    ),
                    AvatarActionButton(
                      icon: Assets.svg.iconTrashCanLine.svg(),
                      iconColor: context.appColors.colors.red,
                    ),
                  ],
                ),
                Column(
                  spacing: 12,
                  children: [
                    ProfileDisplayField(
                      label: localization.firstName,
                      value: user?.name ?? "",
                    ),
                    ProfileDisplayField(
                      label: localization.lastName,
                      value: "",
                    ),
                    ProfileDisplayField(
                      label: localization.phoneNumber,
                      value: user?.phoneNumber?.phoneFormat() ?? "",
                    ),
                  ],
                ),
                if (hasEmail)
                  Column(
                    spacing: 4,
                    children: [
                      Text(
                        localization.registrationMethod,
                      ).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 8,
                        children: [
                          Assets.svg.googleLogo.svg(width: 20, height: 20),
                          Text(localization.viaGoogle).labelMd(
                            color: context.appColors.textIconColor.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
