part of '../home_hero_header.dart';

class _SearchRow extends StatelessWidget {
  const _SearchRow({
    required this.hintText,
    required this.onSearchTap,
    required this.onQrTap,
    required this.onFavoriteTap,
  });

  final String hintText;
  final VoidCallback? onSearchTap;
  final VoidCallback? onQrTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onSearchTap,
            child: Container(
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: colors.background.elevation2,
                borderRadius: BorderRadius.circular(24),
                boxShadow: _searchShadow(context),
              ),
              child: Row(
                children: [
                  Assets.svg.searchLine.path.toSvgImage(
                    width: 20,
                    height: 20,
                    tintColor: colors.colors.green,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      hintText,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodyMd(color: colors.textIconColor.tertiary),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        _RoundButton(
          onTap: onQrTap,
          child: Assets.svg.iconQrCode.path.toSvgImage(
            width: 24,
            height: 24,
            tintColor: colors.colors.green,
          ),
        ),
        const SizedBox(width: 6),
        _RoundButton(
          onTap: onFavoriteTap,
          child: Assets.svg.iconFilledHeard.path.toSvgImage(
            width: 24,
            height: 24,
            tintColor: colors.colors.red,
          ),
        ),
      ],
    );
  }
}

class _RoundButton extends StatelessWidget {
  const _RoundButton({required this.child, required this.onTap});

  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.appColors.background.elevation2,
          borderRadius: BorderRadius.circular(24),
          boxShadow: _searchShadow(context),
        ),
        child: child,
      ),
    );
  }
}
