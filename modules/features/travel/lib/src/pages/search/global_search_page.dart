import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/search/bloc/global_search_bloc.dart';
import 'package:travel/src/pages/search/widgets/global_search_hints_card.dart';
import 'package:travel/src/pages/search/widgets/global_search_query_card.dart';
import 'package:travel/src/widgets/travel_nav_bar.dart';

class GlobalSearchPage extends HookWidget {
  const GlobalSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<GlobalSearchBloc>();
    final controller = useTextEditingController(text: bloc.state.query);
    final focusNode = useFocusNode();

    useEffect(() {
      focusNode.requestFocus();
      return null;
    }, const []);

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: SafeArea(
        bottom: false,
        child: BlocConsumer<GlobalSearchBloc, GlobalSearchState>(
          bloc: bloc,
          listenWhen: (previous, current) =>
              current.errorMessage != null &&
              previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder: (context, state) {
            final hintsCard = _hintsCard(context, bloc, state, controller);
            return Column(
              children: [
                TravelNavBar(
                  title: context.localization.search,
                  onBack: () => context.pop(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      spacing: 8,
                      children: [
                        GlobalSearchQueryCard(
                          controller: controller,
                          focusNode: focusNode,
                          popular: state.popular,
                          onChanged: (value) =>
                              bloc.add(GlobalSearchEvent.queryChanged(value)),
                          onSubmitted: (value) => _search(context, value),
                        ),
                        if (hintsCard != null) hintsCard,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 8,
                    bottom: MediaQuery.paddingOf(context).bottom + 8,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    child: AppActionButton(
                      sizeType: ActionButtonSizeType.large,
                      type: state.hasQuery
                          ? ActionButtonType.primary
                          : ActionButtonType.secondary,
                      actionText: context.localization.global_search_action,
                      onPressed: state.hasQuery
                          ? () => _search(context, state.query)
                          : null,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget? _hintsCard(
    BuildContext context,
    GlobalSearchBloc bloc,
    GlobalSearchState state,
    TextEditingController controller,
  ) {
    if (state.showSuggestions) {
      if (state.suggestions.isEmpty) return null;
      return GlobalSearchHintsCard(
        title: context.localization.global_search_results,
        hints: state.suggestions.map((e) => e.title).toList(),
        onHintTap: (index) =>
            _openSuggestion(context, state.suggestions[index]),
      );
    }

    if (state.history.isEmpty) return null;
    return GlobalSearchHintsCard(
      title: context.localization.global_search_history,
      hints: state.history.map((e) => e.query).toList(),
      onClear: () => _confirmClearHistory(context, bloc),
      onHintRemove: (index) => bloc.add(
        GlobalSearchEvent.removeHistory(historyId: state.history[index].id),
      ),
      onHintTap: (index) {
        final query = state.history[index].query;
        controller.text = query;
        controller.selection = TextSelection.collapsed(offset: query.length);
        bloc.add(GlobalSearchEvent.queryChanged(query));
        _search(context, query);
      },
    );
  }

  void _search(BuildContext context, String query) {
    if (query.trim().length < globalSearchMinQueryLength) return;
    context.travel.pushGlobalSearchResult(query: query.trim());
  }

  void _openSuggestion(BuildContext context, SearchSuggestion suggestion) {
    switch (suggestion.type) {
      case SearchSuggestionType.city:
        context.travel.pushCityPage(cityId: suggestion.id);
      case SearchSuggestionType.content:
        context.travel.pushDetailPage(contentId: suggestion.id);
    }
  }

  void _confirmClearHistory(BuildContext context, GlobalSearchBloc bloc) {
    showActionAlertDialog(
      context,
      title: context.localization.global_search_clear_title,
      message: context.localization.global_search_clear_message,
      firstActionText: context.localization.global_search_history_clear,
      firstButtonTextColor: context.appColors.colors.red,
      secondActionText: context.localization.action_cancel,
      onFirstButtonClick: () => bloc.add(GlobalSearchEvent.clearHistory()),
    );
  }
}
