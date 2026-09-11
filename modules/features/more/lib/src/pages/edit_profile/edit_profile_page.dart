import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:more/src/pages/edit_profile/widgets/avatar_action_button.dart';
import 'package:more/src/pages/edit_profile/widgets/profile_display_field.dart';
import 'package:more/src/pages/shell_more/widgets/change_avatar_sheet.dart';
import 'package:more/src/pages/shell_more/widgets/profile/profile_avatar_large.dart';
import 'package:shared/shared.dart' hide Toast;

class EditProfilePage extends HookWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final screenPadding = MediaQuery.of(context).padding;
    final bloc = context.read<EditProfileBloc>();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColors.background.underlayer,
      appBar: GradientAppBar(title: localization.edit, centerTitle: true),
      body: MultiBlocListener(
        listeners: [
          BlocListener<EditProfileBloc, EditProfileState>(
            listenWhen:
                (prev, cur) =>
                    cur.errorMessage != null &&
                    prev.errorMessage != cur.errorMessage,
            listener: (context, state) => Toast.showToast(state.errorMessage!),
          ),
          BlocListener<EditProfileBloc, EditProfileState>(
            listenWhen: (prev, cur) => prev.profile != cur.profile,
            listener: (context, state) {
              firstNameController.text = state.profile?.firstName ?? "";
              lastNameController.text = state.profile?.lastName ?? "";
            },
          ),
          BlocListener<EditProfileBloc, EditProfileState>(
            listenWhen: (prev, cur) => cur.isSaved && !prev.isSaved,
            listener: (context, state) => context.pop(),
          ),
        ],
        child: BlocBuilder<EditProfileBloc, EditProfileState>(
          builder: (context, state) {
            final profile = state.profile;

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
                      if (profile?.canChangeAvatar ?? false)
                        AvatarActionButton(
                          icon: Assets.svg.iconEditPen.svg(),
                          onTap: () => _pickAvatar(context, bloc),
                        ),
                      ProfileAvatarLarge(
                        photoUrl: profile?.avatar,
                        isLoading: state.isAvatarLoading,
                      ),
                      if (state.hasAvatar)
                        AvatarActionButton(
                          icon: Assets.svg.iconTrashCanLine.svg(),
                          iconColor: context.appColors.colors.red,
                          onTap:
                              () => bloc.add(EditProfileEvent.deleteAvatar()),
                        ),
                    ],
                  ),
                  Column(
                    spacing: 12,
                    children: [
                      AppInputField(
                        label: localization.firstName,
                        controller: firstNameController,
                        maxLength: 50,
                        autofillHints: const [AutofillHints.givenName],
                      ),
                      AppInputField(
                        label: localization.lastName,
                        controller: lastNameController,
                        maxLength: 50,
                        autofillHints: const [AutofillHints.familyName],
                      ),
                      ProfileDisplayField(
                        label: localization.phoneNumber,
                        value: profile?.phone?.phoneFormat() ?? "",
                      ),
                    ],
                  ),
                  if (profile?.registrationMethod != null)
                    _registrationMethod(context, profile!.registrationMethod!),
                  AppActionButton(
                    actionText: localization.save,
                    sizeType: ActionButtonSizeType.large,
                    isLoading: state.isSaving,
                    disable: state.isLoading,
                    onPressed:
                        () => bloc.add(
                          EditProfileEvent.save(
                            firstName: firstNameController.text.trim(),
                            lastName: lastNameController.text.trim(),
                          ),
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

  Future<void> _pickAvatar(BuildContext context, EditProfileBloc bloc) async {
    final file = await pickProfileAvatar(context);
    if (file == null) return;
    bloc.add(EditProfileEvent.uploadAvatar(file: file));
  }

  Widget _registrationMethod(BuildContext context, RegistrationMethod method) {
    final glyph = switch (method.key) {
      RegistrationMethodKey.google => Assets.svg.googleLogo,
      RegistrationMethodKey.apple => Assets.svg.appleLogo,
      _ => Assets.svg.iconPhoneFill,
    };

    return Column(
      spacing: 4,
      children: [
        Text(
          context.localization.registrationMethod,
        ).bodySm(color: context.appColors.textIconColor.secondary),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            glyph.svg(width: 20, height: 20),
            Text(
              method.title ?? "",
            ).labelMd(color: context.appColors.textIconColor.primary),
          ],
        ),
      ],
    );
  }
}
