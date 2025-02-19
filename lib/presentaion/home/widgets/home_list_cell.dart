part of 'home_groups.dart';

class HomeListCell extends StatelessWidget {
  final HomeListCellData data;
  final VoidCallback? onItemTap;
  final VoidCallback? openAll;
  const HomeListCell(
      {super.key, required this.data, this.onItemTap, this.openAll});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
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
                        data.title,
                        style: CustomTypography.H2,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: openAll,
                    child: Container(
                        height: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        child: Text(
                          "All",
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
              children: List.generate(data.contents.length, (index) {
                return ItemCard(
                  onTap: onItemTap,
                  key: ValueKey(data.contents[index]),
                  content: data.contents[index],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
