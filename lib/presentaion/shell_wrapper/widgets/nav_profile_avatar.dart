import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:shared/shared.dart';

class NavProfileAvatar extends StatelessWidget {
  const NavProfileAvatar({
    super.key,
    required this.selected,
    required this.ringColor,
    this.size = 24,
  });

  final bool selected;
  final Color ringColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    final photoUrl = context.select<ProfileBloc, String?>((bloc) {
      final state = bloc.state;
      return state is ProfileBlocDataState ? state.userModel?.photoUrl : null;
    });
    final isPremium = context.select<ProfileBloc, bool>((bloc) {
      final state = bloc.state;
      return state is ProfileBlocDataState && state.isPremium;
    });

    final url = photoUrl ?? '';
    final Widget image = url.isEmpty
        ? Assets.png.avatar.image(fit: BoxFit.cover)
        : AppNetworkImage(
            url,
            fit: BoxFit.cover,
            cacheMaxAge: const Duration(days: 10),
            placeholder: Assets.png.avatar.image(fit: BoxFit.cover),
          );

    final Color ring = isPremium
        ? context.appColors.colors.yellow
        : selected
            ? ringColor
            : Colors.transparent;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutCubic,
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ring, width: 1.5),
          ),
          child: ClipOval(child: image),
        ),
        if (isPremium)
          const Positioned(
            top: -4,
            right: -8.875,
            child: _PremiumBadge(),
          ),
      ],
    );
  }
}

class _PremiumBadge extends StatelessWidget {
  const _PremiumBadge();

  @override
  Widget build(BuildContext context) {
    final yellow = context.appColors.colors.yellow;

    return Container(
      width: 16,
      height: 16,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: yellow,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.appColors.stroke.opaque,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(color: yellow, blurRadius: 10, offset: const Offset(0, 2)),
        ],
      ),
      child: Assets.svg.premiumBadge.svg(width: 12, height: 12),
    );
  }
}
