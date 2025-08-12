import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/shell_more/widgets/about_widget.dart';
import 'package:more/src/pages/shell_more/widgets/extensions.dart';
import 'package:more/src/pages/shell_more/widgets/more_currency_item.dart';
import 'package:more/src/pages/shell_more/widgets/use_trips.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import '../../di/injection.dart';
import '../profile_page/bloc/profile_bloc.dart';
import 'bloc/more_bloc.dart';

class ShellMorePage extends StatefulWidget {
  const ShellMorePage({super.key});

  @override
  State<ShellMorePage> createState() => _ShellMorePageState();
}

class _ShellMorePageState extends State<ShellMorePage> {
  late final MoreBloc moreBloc;

  @override
  void initState() {
    // TODO: implement initState
    moreBloc = getIt<MoreBloc>()..add(MoreEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => moreBloc,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
          centerTitle: false,
          title: BlocBuilder<ProfileBloc, ProfileBlocState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context.more.pushProfilePage(
                    extra: context.read<ProfileBloc>(),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 16,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: ExtendedImage.network(
                          (state is ProfileBlocDataState)
                              ? state.userModel?.photoUrl ?? ""
                              : "",
                          fit: BoxFit.cover,

                          cache: true,
                          cacheMaxAge: Duration(days: 10),
                          loadStateChanged: (state) {
                            switch (state.extendedImageLoadState) {
                              case LoadState.completed:
                                return state.completedWidget;
                              default:
                                return Assets.pngAvatar.toImage(
                                  fit: BoxFit.cover,
                                );
                            }
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        (state is ProfileBlocDataState)
                            ? state.userModel?.name ?? ""
                            : context.localization.guest,
                        style: CustomTypography.H3,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        body: BlocBuilder<MoreBloc, MoreState>(
          builder: (context, state) {
            if (state is MoreLoadingState) {
              return Center(child: CircularProgressIndicator());
            }

            final data = (state as MoreDataState);
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxScreenWidth),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MoreCurrencyItem(
                          currencies: data.currencies,
                          onTap: () {
                            context.more.pushCurrencies(
                              data.currencies,
                            );
                          },
                        ),
                        AboutWidget(avatars: data.abouts),
                        if (data.useFull.isNotEmpty)
                          UseTripsWidget(useFull: data.useFull),
                      ],
                    ),
                  ),
                ),
              ),
            );

            // return state.when(loading: () {
            //   return Center(child: CircularProgressIndicator());
            // }, dataState: (abouts, useFull, currencies) {
            //
            //   return SingleChildScrollView(
            //     child: Padding(
            //       padding: EdgeInsets.all(16),
            //       child: Container(
            //         alignment: Alignment.topCenter,
            //         child: ConstrainedBox(
            //           constraints: BoxConstraints(maxWidth: maxScreenWidth),
            //           child: Column(
            //             spacing: 20,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               MoreCurrencyItem(
            //                 currencies: currencies,
            //                 onTap: (){
            //                   //TODO CurrencyPage
            //                   // context.pushCurrencies(currencies.filterCurrencies());
            //                 },
            //               ),
            //               AboutWidget(
            //                 avatars: abouts,
            //               ),
            //               if (useFull.isNotEmpty)
            //                 UseTripsWidget(
            //                   useFull: useFull,
            //                 )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   );
            // });
          },
        ),
      ),
    );
  }
}
