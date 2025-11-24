part of 'home_groups.dart';

class HomeListCell extends StatefulWidget {
  final List<MainPageContent> items;
  final String categoryName;
  final int categoryId;
  final ValueChanged<MainPageContent>? onItemTap;
  final VoidCallback? openAll;
  final ViewType? viewType;

  const HomeListCell({
    super.key,
    required this.categoryId,
    required this.categoryName,
    required this.items,
    this.onItemTap,
    this.viewType,
    this.openAll,
  });

  @override
  State<HomeListCell> createState() => _HomeListCellState();
}

class _HomeListCellState extends State<HomeListCell>
{
  final loadContentBLoc = getIt<LoadContentBloc>();

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    loadContentBLoc.add(
      LoadContentCategoryEvent.init(widget.categoryId, widget.items),
    );
    super.initState();
    scrollController.addListener(_onScroll);
  }

  var isLoading = false;

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 50) {
      loadContentBLoc.add(LoadContentCategoryEvent.loadNext());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoadContentBloc>(
      create: (context) => loadContentBLoc,
      child: BlocBuilder<LoadContentBloc, LoadContentCategoryState>(
        builder: (context, state) {
          isLoading = state.isLoading;
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
                            padding: EdgeInsets.only(left: 20),
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
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            alignment: Alignment.center,
                            child: Text(
                              context.localization.action_all,
                              style: CustomTypography.bodyLg.copyWith(
                                color: context.appColors.brand,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: widget.viewType == ViewType.profile ? 122 : 230,
                  child: ListView.separated(
                    addAutomaticKeepAlives: true,
                    controller: scrollController,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 12);
                    },
                    scrollDirection: Axis.horizontal,

                    physics:
                        Platform.isAndroid
                            ? ClampingScrollPhysics()
                            : BouncingScrollPhysics(),
                    itemCount:
                        state.contents.length + (state.isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == state.contents.length) {
                        return Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top: 70),
                          child: LoadingIndicator(),
                        );
                      }
                      final item = state.contents[index];
                      return widget.viewType == ViewType.profile
                          ? ItemCardAvatar(
                            avatarUrl: item.mainPhoto,
                            name: item.title,
                            onTap: () {
                              widget.onItemTap?.call(item);
                            },
                          )
                          : ItemCard(
                            content: item,
                            distanceText: distanceText(
                              context,
                              item.distanceKm,
                            ),
                            onTap: () => widget.onItemTap?.call(item),
                          );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String? distanceText(BuildContext context, double? distance) {
    if (distance == null) return null;
    if (distance < 0.5) {
      return "${(distance * 100).floor()} ${context.localization.distanceM}";
    }
    return "${distance.floor()} ${context.localization.distanceKm}";
  }

}
