import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/search/bloc/museum_search_bloc.dart';
import 'package:travel/src/pages/museum/widgets/museum_chip.dart';
import 'package:travel/src/pages/museum/widgets/museum_nav_bar.dart';
import 'package:shared/shared.dart' hide Toast;

class MuseumSearchPage extends HookWidget {
  const MuseumSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<MuseumSearchBloc>();
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
        child: BlocConsumer<MuseumSearchBloc, MuseumSearchState>(
          bloc: bloc,
          listenWhen:
              (previous, current) =>
                  current.errorMessage != null &&
                  previous.errorMessage != current.errorMessage,
          listener: (context, state) => Toast.showToast(state.errorMessage!),
          builder:
              (context, state) => Column(
                children: [
                  MuseumNavBar(
                    title: context.localization.museum_search_title,
                    onBack: () => context.pop(),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Column(
                        spacing: 8,
                        children: [
                          _whereCard(
                            context,
                            bloc,
                            state,
                            controller,
                            focusNode,
                          ),
                          if (state.history.isNotEmpty)
                            _historyCard(context, bloc, state, controller),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 8,
                      bottom: MediaQuery.paddingOf(context).bottom + 8,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: AppActionButton(
                        sizeType: ActionButtonSizeType.large,
                        type:
                            state.canSearch
                                ? ActionButtonType.primary
                                : ActionButtonType.secondary,
                        actionText: context.localization.museum_search_action,
                        onPressed:
                            state.canSearch
                                ? () => context.pop(state.result)
                                : null,
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }

  Widget _whereCard(
    BuildContext context,
    MuseumSearchBloc bloc,
    MuseumSearchState state,
    TextEditingController controller,
    FocusNode focusNode,
  ) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            context.localization.museum_search_where,
          ).h3(color: colors.textIconColor.primary),
          Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: colors.fill.quaternary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              spacing: 8,
              children: [
                Assets.svg.searchLine.path.toSvgImage(
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                  tintColor: colors.textIconColor.tertiary,
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onChanged:
                        (value) =>
                            bloc.add(MuseumSearchEvent.queryChanged(value)),
                    onSubmitted: (value) {
                      if (!bloc.state.canSearch) return;
                      context.pop(bloc.state.result);
                    },
                    textInputAction: TextInputAction.search,
                    cursorColor: colors.brandSeaBlue,
                    cursorWidth: 1.5,
                    style: CustomTypography.bodyLg.copyWith(
                      color: colors.textIconColor.primary,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      isCollapsed: true,
                      border: InputBorder.none,
                      hintText: context.localization.museum_search_where_hint,
                      hintStyle: CustomTypography.bodyLg.copyWith(
                        color: colors.textIconColor.tertiary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (state.cities.isNotEmpty)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                spacing: 8,
                children: [
                  for (final city in state.cities)
                    MuseumChip(
                      title: city.name,
                      isSelected: city.id == state.city?.id,
                      onTap: () {
                        controller.text = city.name;
                        controller.selection = TextSelection.collapsed(
                          offset: city.name.length,
                        );
                        bloc.add(MuseumSearchEvent.selectCity(city: city));
                      },
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _historyCard(
    BuildContext context,
    MuseumSearchBloc bloc,
    MuseumSearchState state,
    TextEditingController controller,
  ) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  context.localization.museum_search_history,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(color: colors.textIconColor.primary),
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => bloc.add(MuseumSearchEvent.clearHistory()),
                child: Text(
                  context.localization.museum_search_history_clear,
                ).labelMd(color: colors.brandSeaBlue),
              ),
            ],
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final query in state.history)
                MuseumChip(
                  title: query,
                  onTap: () {
                    controller.text = query;
                    controller.selection = TextSelection.collapsed(
                      offset: query.length,
                    );
                    bloc.add(MuseumSearchEvent.queryChanged(query));
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
