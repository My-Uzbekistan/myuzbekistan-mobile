import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/di/injection.dart';
import 'package:travel/src/pages/catalog_investments/CatalogInvestmentsPage.dart';
import 'package:travel/src/pages/catalog_investments/invest_currencs_type.dart';
import 'package:travel/src/pages/catalog_investments/pages/search_page/bloc/invest_search_bloc.dart';

class InvestSearchPage extends StatefulWidget {
  final InvestCurrencyType currencyType;

  const InvestSearchPage({super.key, required this.currencyType});

  @override
  State<InvestSearchPage> createState() => _InvestSearchPageState();
}

class _InvestSearchPageState extends State<InvestSearchPage> {
  FocusNode searchFocusNode = FocusNode();
  InvestSearchBloc bloc = getIt<InvestSearchBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((p) {
      Future.delayed(const Duration(milliseconds: 500), () {
        searchFocusNode.requestFocus();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actionsPadding: EdgeInsets.only(right: 16),

          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: Text(
                context.localization.action_cancel,
              ).bodyLg(color: context.appColors.colors.green),
            ),
          ],
          title: Hero(
            tag: "SearchField",
            child: Material(
              type: MaterialType.transparency,
              child: SearchInputField(
                hintText: context.localization.investment_search_title,
                focusNode: searchFocusNode,
                onChanged: (value) {
                  if (value.length >= 3 || value.isEmpty) {
                    bloc.add(InvestSearchBlocEvent.search(value));
                  }
                },
              ),
            ),
          ),
        ),
        body: BlocBuilder<InvestSearchBloc, InvestmentsSearchState>(
          builder: (context, state) {
            return state.map(
              initialState: (state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child:
                      Text(
                        context.localization.investment_search_page_initial,
                      ).bodyMd(),
                );
              },
              loadingState: (state) {
                return Center(child: LoadingIndicator());
              },
              noContentState: (st) {
                return Transform.translate(
                  offset: Offset(0, -kToolbarHeight),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: MessageContainer.notFoundWidget(
                      context,
                      title: context.localization.nothing_found,
                      caption: context.localization.nothing_found_message,
                    ),
                  ),
                );
              },
              dataState: (state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ).copyWith(top: 24, bottom: 16),
                      child:
                          Text(
                            context.localization.investments_category_title,
                          ).h2(),
                    ),

                    Flexible(
                      child: GridView.builder(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ).copyWith(bottom: kBottomNavigationBarHeight + 16),
                        // SliverPadding o‘rniga
                        itemCount: state.contents.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                              childAspectRatio: 165 / 218,
                            ),
                        itemBuilder: (context, index) {
                          final item = state.contents[index];
                          return InvestItem(
                            content: item,
                            currencyType: widget.currencyType,
                            onTap: () {
                              context.travel.pushDetailPage(
                                content: item.toContentDetail(),
                                contentId: item.contentId,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            );
            return Text("data");
          },
        ),
      ),
    );
  }
}
