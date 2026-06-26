import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';

import '../../profile_page/bloc/profile_bloc.dart';

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
    final name =
        isLoggedIn
            ? (state.userModel?.userName ?? "")
            : context.localization.guest;

    // Mehmon — Premium (badge/obuna) ko'rsatilmaydi, faqat ism.
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
            _Avatar(photoUrl: state.userModel?.photoUrl, isPremium: false),
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
              ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTypography.H2,
                  ),
                  Text(
                    context.localization.premiumActiveSubtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTypography.labelSm.copyWith(
                      color: const Color(0xFFCBA052),
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

  const _Avatar({this.photoUrl, required this.isPremium});

  @override
  Widget build(BuildContext context) {
    final url = photoUrl ?? "";
    final avatar = SizedBox(
      height: 48,
      width: 48,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child:
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
      ),
    );

    if (!isPremium) return avatar;

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: _premiumGradient,
      ),
      child: avatar,
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
          style: CustomTypography.labelSm.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
