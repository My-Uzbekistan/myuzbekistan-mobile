part of 'home_groups.dart';

class HomeListCell extends StatefulWidget {
  final List<MainPageContent> items;
  final String categoryName;
  final ValueChanged<MainPageContent>? onItemTap;
  final VoidCallback? openAll;

  const HomeListCell(
      {super.key,
      required this.categoryName,
      required this.items,
      this.onItemTap,
      this.openAll});

  @override
  State<HomeListCell> createState() => _HomeListCellState();
}

class _HomeListCellState extends State<HomeListCell>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 68),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        widget.categoryName,
                        style: CustomTypography.H2,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.openAll,
                    child: Container(
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        child: Text(
                          context.localizations?.action_all ?? "",
                          style: CustomTypography.bodyLg
                              .copyWith(color: context.appColors.brand),
                        )),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              spacing: 12,
              children: List.generate(widget.items.length, (index) {
                final item = widget.items[index];
                return item.viewType == ViewType.profile
                    ? ItemCardAvatar(
                        avatarUrl: item.mainPhoto,
                        name: item.title,
                        onTap: () {
                          widget.onItemTap?.call(item);
                        },
                      )
                    : ItemCard(
                        key: ValueKey(item),
                        content: item,
                        onTap: () => widget.onItemTap?.call(item),

                      );
              }),
            ),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
