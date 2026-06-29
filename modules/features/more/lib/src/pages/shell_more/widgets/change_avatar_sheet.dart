import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:shared/shared.dart';

import '../../profile_page/bloc/profile_bloc.dart';

Future<void> changeProfileAvatar(BuildContext context) async {
  final source = await showModalBottomSheet<ImageSource>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (_) => const _ChangeAvatarSheet(),
  );
  if (source == null || !context.mounted) return;

  final file = await _pickImage(source);
  if (file == null || !context.mounted) return;

  context.read<ProfileBloc>().add(ProfileBlocEvent.uploadAvatar(file));
}

Future<File?> _pickImage(ImageSource source) async {
  try {
    return await CameraStoragePermission.openFile(source: source);
  } catch (_) {
    return null;
  }
}

class _ChangeAvatarSheet extends StatelessWidget {
  const _ChangeAvatarSheet();

  @override
  Widget build(BuildContext context) {
    final l10n = context.localization;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(l10n.changePhotoTitle).h3(),
                  ),
                  _OptionTile(
                    icon: Icons.photo_camera_outlined,
                    label: l10n.takePhotoFromCamera,
                    onTap: () => Navigator.pop(context, ImageSource.camera),
                  ),
                  _OptionTile(
                    icon: Icons.photo_library_outlined,
                    label: l10n.chooseFromGallery,
                    onTap: () => Navigator.pop(context, ImageSource.gallery),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: AppActionButton(
                actionText: l10n.cancel,
                type: ActionButtonType.text,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OptionTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _OptionTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          spacing: 16,
          children: [
            Icon(icon, color: context.appColors.brand, size: 24),
            Expanded(
              child:
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodyLg(),
            ),
          ],
        ),
      ),
    );
  }
}
