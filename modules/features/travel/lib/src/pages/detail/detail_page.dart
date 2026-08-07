import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/detail/widget/detail_body.dart';
import 'detail_bloc/detail_bloc.dart';

class DetailPage extends HookWidget {
  final double titleAppearOffset = 290;

  const DetailPage({super.key});

  final duration = 300;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final showCollapsedTitle = useState(false);
    final isCollapsed = useState(false);
    final screenWidth = MediaQuery.of(context).size.width;
    useEffect(() {
      void listener() {
        if (!scrollController.hasClients) return;
        final offset = scrollController.offset;
        final threshold = screenWidth - kToolbarHeight;
        if (offset > threshold && !isCollapsed.value) {
          isCollapsed.value = true;
        } else if (offset <= threshold && isCollapsed.value) {
          isCollapsed.value = false;
        }

        if (offset >= titleAppearOffset && !showCollapsedTitle.value) {
          showCollapsedTitle.value = true;
        } else if (offset < titleAppearOffset && showCollapsedTitle.value) {
          showCollapsedTitle.value = false;
        }
      }

      scrollController.addListener(listener);
      return () => scrollController.removeListener(listener);
    }, [scrollController]);
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<DetailBloc, DetailBlocState>(
        listener: (context, state) {
          state.whenOrNull(
            dataState: (contentDetail, contentId, isLoading, nav) {
              if (nav is Unauthorized) {
                context.more.pushAuthPage();
              }
            },
          );
        },
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: duration),
            child: state is DetailBlocDataState
                ? DetailBody(
                    content: state.contentDetail,
                    isLoading: state.isLoading,
                    isCollapsed: isCollapsed.value,
                    scrollController: scrollController,
                  )
                : Scaffold(
                    appBar: GradientAppBar(),
                    extendBodyBehindAppBar: false,
                    body: Container(
                      padding: EdgeInsets.only(top: 16),
                      alignment: Alignment.topCenter,
                      child: LoadingIndicator(),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
