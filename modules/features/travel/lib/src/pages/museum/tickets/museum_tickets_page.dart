import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/tickets/bloc/museum_tickets_bloc.dart';
import 'package:travel/src/pages/museum/tickets/widgets/museum_ticket_card.dart';
import 'package:travel/src/pages/museum/widgets/museum_circle_button.dart';
import 'package:travel/src/widgets/travel_nav_bar.dart';
import 'package:travel/src/pages/museum/widgets/museum_state_view.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumTicketsPage extends HookWidget {
  const MuseumTicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumTicketsBloc>();
    final pageController = usePageController(viewportFraction: 0.98);
    final currentPage = useState(0);

    useEffect(() {
      void listener() {
        if (!pageController.hasClients) return;
        currentPage.value = pageController.page?.round() ?? 0;
      }

      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<MuseumTicketsBloc, MuseumTicketsState>(
          bloc: bloc,
          listenWhen:
              (previous, current) =>
                  current.errorMessage != null &&
                  previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder:
              (context, state) => Column(
                children: [
                  TravelNavBar(
                    title: _title(context, state.filter),
                    subtitle:
                        state.count > 0
                            ? context.localization.museum_tickets_count(
                              state.count,
                            )
                            : null,
                    onBack: () => context.pop(),
                    trailing:
                        state.filter == MuseumOrderState.active
                            ? MuseumCircleButton(
                              size: 44,
                              onTap:
                                  () => context.travel.pushMuseumTickets(
                                    state: MuseumOrderState.expired,
                                  ),
                              icon: Assets.svg.iconClockRepeat.path.toSvgImage(
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                tintColor:
                                    context.appColors.textIconColor.primary,
                              ),
                            )
                            : null,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: _content(
                        context,
                        bloc,
                        state,
                        pageController,
                        currentPage.value,
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }

  Widget _content(
    BuildContext context,
    MuseumTicketsBloc bloc,
    MuseumTicketsState state,
    PageController pageController,
    int currentPage,
  ) {
    if (state.orders.isEmpty && state.isLoading) {
      return Shimmer.fromDefault(
        child: const Padding(
          padding: EdgeInsets.all(16),
          child: ShimmerDefaultContainer(height: double.maxFinite, radius: 28),
        ),
      );
    }

    if (state.orders.isEmpty) {
      return Center(
        child: MuseumStateView(
          title:
              state.loadFailed
                  ? context.localization.museum_page_failed_to_load
                  : context.localization.museum_tickets_empty_title,
          message:
              state.loadFailed
                  ? context.localization.museum_something_went_wrong
                  : context.localization.museum_tickets_empty_message,
          actionText: context.localization.museum_refresh,
          onAction: () => bloc.add(MuseumTicketsEvent.refresh()),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 12,
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: state.orders.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: EdgeInsets.only(
                      right: index == state.orders.length - 1 ? 0 : 6,
                    ),
                    child: MuseumTicketCard(
                      key: ValueKey(state.orders[index].id),
                      order: state.orders[index],
                    ),
                  ),
            ),
          ),
          if (state.orders.length > 1)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 6,
              children: [
                for (var index = 0; index < state.orders.length; index++)
                  Container(
                    width: index == currentPage ? 8 : 6,
                    height: index == currentPage ? 8 : 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          index == currentPage
                              ? context.appColors.colors.green
                              : context.appColors.stroke.nonOpaque,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }

  String _title(
    BuildContext context,
    MuseumOrderState filter,
  ) => switch (filter) {
    MuseumOrderState.active => context.localization.museum_tickets_title_active,
    MuseumOrderState.used => context.localization.museum_tickets_title_used,
    MuseumOrderState.expired =>
      context.localization.museum_tickets_title_expired,
    MuseumOrderState.pending => context.localization.museum_ticket_issuing,
  };
}
