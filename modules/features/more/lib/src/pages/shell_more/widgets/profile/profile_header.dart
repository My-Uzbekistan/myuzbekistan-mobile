import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';

import 'profile_avatar_large.dart';

const _premiumSubtitleGradient = LinearGradient(
  colors: [Color(0xFFF7CE5F), Color(0xFFFEEA7B), Color(0xFFCB9030)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

class ProfileHeader extends StatelessWidget {
  static const double _verticalPadding = 16;
  static const double _avatarSize = 120;
  static const double _avatarSpacing = 16;
  static const double _nameHeight = 28;
  static const double _actionSpacing = 8;
  static const double _actionHeight = 30;
  static const double _premiumSubtitleHeight = 16;

  static double heightOf(
    BuildContext context, {
    required bool isGuest,
    required bool isPremium,
  }) {
    final premiumSubtitle =
        !isGuest && isPremium ? _premiumSubtitleHeight + _actionSpacing : 0.0;

    return MediaQuery.of(context).padding.top +
        _verticalPadding * 2 +
        _avatarSize +
        _avatarSpacing +
        _nameHeight +
        _actionSpacing +
        _actionHeight +
        premiumSubtitle;
  }

  final bool isGuest;
  final String name;
  final String? photoUrl;
  final bool isLoading;
  final bool isPremium;

  const ProfileHeader({
    super.key,
    required this.isGuest,
    this.name = "",
    this.photoUrl,
    this.isLoading = false,
    this.isPremium = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + _verticalPadding,
        bottom: _verticalPadding,
      ),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(32)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: _avatarSpacing,
        children: [
          ProfileAvatarLarge(photoUrl: photoUrl, isLoading: isLoading),
          Column(
            spacing: _actionSpacing,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  Flexible(
                    child:
                        Text(
                          isGuest ? context.localization.guest : name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).h2(),
                  ),
                  if (isPremium)
                    Assets.svg.premiumCheck.svg(width: 22, height: 22),
                ],
              ),
              if (isGuest)
                GestureDetector(
                  onTap: () => context.more.pushAuthPage(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: context.appColors.brand,
                      borderRadius: BorderRadius.circular(56),
                    ),
                    child: Text(
                      context.localization.log_in,
                    ).labelSm(color: context.appColors.static.white),
                  ),
                )
              else ...[
                if (isPremium)
                  ShaderMask(
                    shaderCallback: _premiumSubtitleGradient.createShader,
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      context.localization.premiumActiveSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelSm(color: Colors.white),
                  ),
                GestureDetector(
                  onTap: () => context.more.pushEditProfilePage(),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: context.appColors.background.elevation2Alt,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 8,
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              context.appColors.textIconColor.primary,
                              BlendMode.srcIn,
                            ),
                            child: Assets.svg.iconEditPen.svg(),
                          ),
                        ),
                        Text(context.localization.edit).labelSm(
                          color: context.appColors.textIconColor.primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
