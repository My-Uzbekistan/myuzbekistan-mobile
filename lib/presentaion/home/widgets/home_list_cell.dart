part of 'home_groups.dart';

class HomeListCell extends StatefulWidget {
  final List<MainPageContent> items;
  final String categoryName;
  final int categoryId;
  final ValueChanged<MainPageContent>? onItemTap;
  final VoidCallback? openAll;

  const HomeListCell(
      {super.key,
      required this.categoryId,
      required this.categoryName,
      required this.items,
      this.onItemTap,
      this.openAll});

  @override
  State<HomeListCell> createState() => _HomeListCellState();
}

class _HomeListCellState extends State<HomeListCell>
    with AutomaticKeepAliveClientMixin {
  final loadContentBLoc = getIt<LoadContentBloc>();

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    loadContentBLoc
        .add(LoadContentCategoryEvent.init(widget.categoryId, widget.items));
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
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  physics: Platform.isAndroid
                      ? ClampingScrollPhysics()
                      : BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 12,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(state.contents.length + 1, (index) {
                      if (index == state.contents.length) {
                        return state.isLoading
                            ? LoadingIndicator()
                            : SizedBox();
                      }
                      final item = state.contents[index];
                      return RepaintBoundary(
                        key:ValueKey(item) ,
                        child: item.viewType == ViewType.profile
                            ? ItemCardAvatar(
                          avatarUrl: item.mainPhoto,
                          name: item.title,
                          onTap: () {
                            widget.onItemTap?.call(item);
                          },
                        )
                            : ItemCard(
                          content: item,
                          onTap: () => widget.onItemTap?.call(item),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
