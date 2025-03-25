part of 'home_groups.dart';

class HomeAvatarListItem extends StatelessWidget {
  final String name;

  const HomeAvatarListItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          AppAvatar(
            sizeType: AvatarSizeType.medium,
          ),
          Flexible(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    name,
                    maxLines: 1,
                    style: CustomTypography.bodySm,
                  )))
        ],
      ),
    );
  }
}
