import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';

import '../../profile_page/bloc/profile_bloc.dart';
import 'change_avatar_sheet.dart';

const _premiumGradient = LinearGradient(
  colors: [Color(0xFFF7CE5F), Color(0xFFFEEA7B), Color(0xFFCB9030)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

class ProfileAppBarTitle extends StatelessWidget {
  final ProfileBlocState profileState;
  final PremiumStatusModel? premiumStatus;
  final bool premiumLoaded;

  const ProfileAppBarTitle({
    super.key,
    required this.profileState,
    this.premiumStatus,
    this.premiumLoaded = false,
  });

  bool get _isPremium => premiumStatus?.isPremium ?? false;

  @override
  Widget build(BuildContext context) {
    final state = profileState;
    final isLoggedIn = state is ProfileBlocDataState;
    final isAvatarLoading = state is ProfileBlocDataState && state.isLoading;
    final name =
        isLoggedIn
            ? (state.userModel?.userName ?? "")
            : context.localization.guest;

    final canEditAvatar = isLoggedIn && _isPremium;
    final VoidCallback? avatarTap =
        canEditAvatar ? () => changeProfileAvatar(context) : null;
    if (!isLoggedIn) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTypography.H3,
            ),
          ),
        ],
      );
    }

    if (!premiumLoaded) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          if (isLoggedIn)
            _Avatar(
              photoUrl: state.userModel?.photoUrl,
              isPremium: false,
              isLoading: isAvatarLoading,
              onTap: avatarTap,
            ),
          Flexible(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTypography.H3,
            ),
          ),
        ],
      );
    }

    if (_isPremium) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          context.pushType(
            AppNavPath.travel.premiumCancelPage,
            extra: premiumStatus,
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            if (isLoggedIn)
              _Avatar(
                photoUrl: state.userModel?.photoUrl,
                isPremium: true,
                isLoading: isAvatarLoading,
                onTap: avatarTap,
              ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTypography.H2,
                    ),
                    Assets.svg.premiumCheck.svg(width: 22,height: 22),
                  ],),

                  ShaderMask(
                    shaderCallback:
                        (bounds) => _premiumGradient.createShader(bounds),
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      context.localization.premiumActiveSubtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTypography.labelSm.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        if (isLoggedIn)
          _Avatar(
            photoUrl: state.userModel?.photoUrl,
            isPremium: false,
            isLoading: isAvatarLoading,
            onTap: avatarTap,
          ),
        Flexible(
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTypography.H3,
          ),
        ),
        _PremiumBadge(
          onTap: () {
            context.pushType(AppNavPath.travel.premiumOnboardingPage);
          },
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  final String? photoUrl;
  final bool isPremium;
  final bool isLoading;
  final VoidCallback? onTap;

  const _Avatar({
    this.photoUrl,
    required this.isPremium,
    this.isLoading = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final url = isPremium ? (photoUrl ?? "") : "";
    final avatar = SizedBox(
      height: 56,
      width: 56,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Stack(
          fit: StackFit.expand,
          children: [
            url.isEmpty
                ? Assets.png.avatar.image(fit: BoxFit.cover)
                : ExtendedImage.network(
                  url,
                  fit: BoxFit.cover,
                  cache: true,
                  cacheMaxAge: const Duration(days: 10),
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return state.completedWidget;
                      default:
                        return Assets.png.avatar.image(fit: BoxFit.cover);
                    }
                  },
                ),
            if (isLoading)
              ColoredBox(
                color: Colors.black.withValues(alpha: 0.4),
                child: const Center(child: LoadingIndicator(size: 20)),
              ),
          ],
        ),
      ),
    );

    if (onTap == null) return avatar;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          avatar,
          Positioned(
            right: -2,
            bottom: -2,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColors.brand,
                border: Border.all(
                  color: context.appColors.background.elevation1,
                  width: 1.5,
                ),
              ),
              child: const Icon(Icons.edit, size: 10, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _PremiumBadge extends StatelessWidget {
  final VoidCallback onTap;

  const _PremiumBadge({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: _premiumGradient,
        ),
        child: Text(
          context.localization.premium,
          style: CustomTypography.labelSm,
        ),
      ),
    );
  }
}
